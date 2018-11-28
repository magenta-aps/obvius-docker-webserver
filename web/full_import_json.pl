#!/usr/bin/perl

BEGIN {
    unshift(@INC, '/var/www/obvius/perl');
    unshift(@INC, '/var/www/www.ku.dk/perl');
};

use strict;
use warnings;
use Data::Dumper;

use LWP::UserAgent;
use JSON;

use Obvius;
use Obvius::Config;
use File::Basename;
use Cwd qw(abs_path);

my $hostname=`/bin/hostname`; chomp($hostname);
my $confname = $ARGV[0] || 'ku';
my $debug = $#ARGV > 0 ? $ARGV[1] : 0;

my $config = new Obvius::Config($confname);
my $obvius = Obvius->new($config);
my $is_new_db_model = $obvius->can('schema') ? 1 : 0;
my $dsn = $is_new_db_model ? $config->param('new_db_dsn') || $config->param('dsn') : $config->param('dsn');
my $dbh = DBI->connect(
    $dsn,
    $config->param('normal_db_login'),
    $config->param('normal_db_passwd'),
);
$dbh->do("set names utf8");
my $contenttype = "application/json;charset=utf-8";
my $ua = LWP::UserAgent->new();
my $update_url = "http://solr:8983/solr/obvius/update/json?commit=true&stream.file=test.json&stream.contentType=${contenttype}";

#################################
#### Create dump file
#################################
my $oks = 0;
my $rowField = 'docid';
my $stmt = "select docid from versions where public = 1 order by docid";
if ( $is_new_db_model ) {
    $stmt = "select docid from has_public_path";
}
$stmt = $dbh->prepare($stmt);
$stmt->execute();
open(OUT, "> test.json");
print OUT "[";
while ( my $row = $stmt->fetchrow_hashref() ) {
    my $did = $row->{$rowField};
    my $doc = $obvius->lookup_document_by_id($did);
    my $vdoc = $doc ? $obvius->get_public_version($doc) : undef;
    if ( $vdoc ) {
	eval {
	    my $rec = $vdoc->export_to_solr($obvius, $doc);
	    print OUT $oks == 0 ? '' : ',';
	    print OUT encode_json($rec);
	    $oks++;
	};
	if ( $@ ) {
	    print STDERR "ERROR: Skipping Docid [$did]: $@ \n";
	}
    }
}
print OUT "]";
close(OUT);

print "Created dumpfile with $oks records/documents\n";

# Tell SOLR to do the import
system("curl", $update_url);

# Post the file to cmsnav02 if we're running from cmsnav01
#if($hostname =~ m!^cmsnav01!) {
#    system(
#        "curl",
#        "http://cmsnav02.adm.ku.dk:8983/solr/update/json?commit=true",
#        '-H', 'Content-type:application/json; charset=utf-8',
#        '--data-binary', '@' . $ku_dump_path
#    );
#}


exit(0);

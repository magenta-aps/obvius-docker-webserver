#!/usr/bin/perl

use strict;
use warnings;

sub env_default {
    return defined $ENV{$_[0]} ? $ENV{$_[0]} : $_[1];
}

my $default_config = env_default('ROOTHOST', 'localhost');
my $filename = "/etc/httpd/conf.d/welcome.conf";
open my $fh, ">", $filename or die("Cannot open welcome.conf");
print $fh 'RedirectMatch ^/$ /awstats/awstats.pl?config=' . $default_config . "\n";
close $fh;

print "Starting httpd awstats\n";
exec "/usr/sbin/httpd", "-DFOREGROUND";

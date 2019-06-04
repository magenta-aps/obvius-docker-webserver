FROM solr:latest

ADD ./obvius-conf/configsets /opt/solr/server/solr/configsets

ENTRYPOINT ["bash", "-c", "precreate-core ku_solr /opt/solr/server/solr/configsets/ku_solr; precreate-core ku_solr_html /opt/solr/server/solr/configsets/ku_solr_html; exec solr -f"]

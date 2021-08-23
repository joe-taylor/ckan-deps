FROM solr:7.2.1
COPY --chown=solr:solr scripts/precreate-ckan /opt/docker-solr/scripts/precreate-ckan
COPY --chown=solr:solr scripts/solr-precreate-ckan /opt/docker-solr/scripts/solr-precreate-ckan
COPY --chown=solr:solr config/schema.xml /opt/docker-solr/config/schema.xml
COPY --chown=solr:solr config/solrconfig.xml /opt/docker-solr/config/solrconfig.xml
COPY --chown=solr:solr config/elevate.xml /opt/docker-solr/config/elevate.xml
RUN chmod 775 /opt/docker-solr/scripts/precreate-ckan /opt/docker-solr/scripts/solr-precreate-ckan
RUN chmod 644 /opt/docker-solr/config/schema.xml /opt/docker-solr/config/solrconfig.xml /opt/docker-solr/config/elevate.xml
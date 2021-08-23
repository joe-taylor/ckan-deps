FROM postgres:9.6-buster
RUN useradd ckan
RUN useradd datastore
COPY docker-entrypoint-initdb.d/init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh 
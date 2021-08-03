#!/bin/bash
# set -e

# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
#     if not exists create user ckan;
#     if not exists create user datastore;
#     if not exists create database datastore;
#     if not exists create database 
#     grant all privileges on database docker to docker;
# EOSQL

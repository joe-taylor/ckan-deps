#!/bin/bash

createuser ckan 2>/dev/null
createuser datastore 2>/dev/null

createdb -O ckan ckan 2>/dev/null
createdb -O ckan datastore 2>/dev/null
createdb -O ckan ckan_test 2>/dev/null
createdb -O ckan datastore_test 2>/dev/null
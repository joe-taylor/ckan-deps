#!/bin/bash

if [ -z "$?" ] ; then
	echo "done"
fi

createuser ckan 2>/dev/null
if [ "$?" -eq "0" ] ; then
	psql -U postgres <<-EOF
		alter user ckan password 'ckan';
	EOF
fi
createuser datastore 2>/dev/null
if [ "$?" -eq "0" ] ; then
	psql -U postgres <<-EOF
		alter user datastore password 'datastore';
	EOF
fi

createdb -O ckan ckan 2>/dev/null
createdb -O ckan datastore 2>/dev/null
createdb -O ckan ckan_test 2>/dev/null
createdb -O ckan datastore_test 2>/dev/null
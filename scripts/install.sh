#!/bin/bash

if [ ! -e server.js ]
then
  echo "Error: could not find main application server.js file"
  echo "You should run the install.sh script from the main Verdant-API application root directory"
  echo "i.e: bash scripts/install.sh"
  exit -1
fi

echo "Deleting Database Tables..."

echo "Creating default user 'admin' with password 'verdant'"
curl --data 'username=admin&password=verdant' http://localhost:5000/auth/signup
echo "It is highly recommended to login immediately and change your password"

#!/bin/bash

# Assumes the gh CLI is present in the default Codespaces image.
gh extensions install github/gh-codeql
gh codeql version # first command starts the download

# Create a CodeQL CSV database.
echo "Creating an empty CodeQL database"
mkdir -p csv-src
touch csv-src/empty.csv
gh codeql database create --language csv --source-root csv-src -- csv-db
rm -r csv-src
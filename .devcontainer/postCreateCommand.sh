#!/bin/bash

# Assumes the gh CLI is present in the default Codespaces image.
gh extensions install github/gh-codeql
gh codeql version # first command starts the download

# Create a blank CodeQL database.
echo "Creating a blank CodeQL database"
mkdir -p tmp-src
touch tmp-src/empty.csv
gh codeql database create --language csv --source-root tmp-src -- codeql-tutorial-database
rm -r tmp-src
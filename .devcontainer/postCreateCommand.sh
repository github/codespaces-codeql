#!/bin/bash

# Assumes the gh CLI is present in the default Codespaces image.
gh extensions install github/gh-codeql
gh codeql version # first command starts the download

# Create a blank CodeQL database.
echo "Creating a blank CodeQL database"
mkdir -p js-src
echo "console.log(1)" > js-src/empty.js
gh codeql database create --language javascript --source-root js-src -- blank-codeql-database
rm -r js-src
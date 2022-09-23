#!/bin/bash

# Assumes the gh CLI is present in the default Codespaces image.
# gh extensions install github/gh-codeql
# gh codeql version # first command starts the download

# Copy the dbscheme into the tutorial library, so it matches the DB.
cp codeql-tutorial-database/db-csv/csv.dbscheme tutorial-lib/
cp codeql-tutorial-database/db-csv/csv.dbscheme.stats tutorial-lib/
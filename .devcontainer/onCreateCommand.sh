#!/bin/bash

# Assumes the gh CLI is present in the default Codespaces image.
gh extensions install github/gh-codeql
gh codeql version # first command starts the download of the CodeQL CLI
# Make codeql visible to VSCode by using https://github.com/github/gh-codeql#codeql-stub, since VS Code expects an executable called codeql instead of gh codeql
gh codeql install-stub ~/.local/bin/

# Install the tutorial-queries pack
cd tutorial-queries
echo "Installing tutorial-queries pack"
gh codeql pack install
cd ..

#!/bin/bash

# Assumes the gh CLI is present in the default Codespaces image.
gh extensions install github/gh-codeql
gh codeql version # first command starts the download
gh codeql install-stub ~/.local/bin/
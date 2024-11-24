#!/bin/bash

# Set your GitHub username, repo, and personal access token
GITHUB_USER="Defendra"
REPO_NAME="services"
TOKEN="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"

# Path to the local repository (adjust as needed)
REPO_DIR="/home/rot/auto-run"

# Commit message (e.g., auto-commit with current date and time)
COMMIT_MSG="Auto commit $(date)"

# Navigate to the repository
cd $REPO_DIR

# Add all changes (new files, modified files, etc.)
git add .

# Commit changes with the commit message
git commit -m "$COMMIT_MSG"

# Push changes to GitHub using the personal access token for authentication
git push https://$GITHUB_USER:$TOKEN@github.com/$GITHUB_USER/$REPO_NAME.git main

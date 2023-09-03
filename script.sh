#!/bin/bash

# Step 1
echo "Adding changes to the staging area..."
git add .

# Step 2
echo "Committing changes..."
commit_message="edit jenkinsfile"
git commit -m "$commit_message"

# Step 3
echo "Pushing changes..."
git push

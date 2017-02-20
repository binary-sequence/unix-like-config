#!/bin/bash

# Name: git-sync-fork.sh
#
# It updates the branches in fork with the branches in the upstream repository.
#
# Assumptions:
# - The current directory is the git project.
# - The name of the remote for the upstream repository is 'origin'.
# - The name of the remote for the fork repository is 'fork'.

branches_to_sync='master' && \
git remote update --prune && \
for branch_name in $branches_to_sync; do
  git checkout $branch_name && \
  git merge origin/$branch_name && \
  git push fork $branch_name:$branch_name
done

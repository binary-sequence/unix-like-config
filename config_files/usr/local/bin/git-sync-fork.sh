#!/bin/bash

# Name: git-sync-fork.sh
#
# Synopsis:
#   git-sync-fork.sh [BRANCH]...
#   Example: git-sync-fork.sh master gh-pages
#
# Description:
#   It updates the branches in fork with the branches in the upstream repository.
#
#   Assumptions:
#   - The current directory is the git project.
#   - The name of the remote for the upstream repository is 'origin'.
#   - The name of the remote for the fork repository is 'fork'.
#


if [ "$#" -gt 0 ]; then
  branches_to_sync=$@
else
  branches_to_sync="master"
fi

git remote update --prune && \
for branch_name in $branches_to_sync; do
  git checkout $branch_name && \
  git merge origin/$branch_name && \
  git push fork $branch_name:$branch_name
done

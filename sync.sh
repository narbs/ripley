#!/bin/bash
set -e

git fetch origin main
if ! git merge --ff-only origin/main 2>/dev/null; then
  echo "Conflict: cannot fast-forward merge origin/main"
  git status
  exit 1
fi

git fetch upstream main
if ! git merge --ff-only upstream/main 2>/dev/null; then
  echo "Conflict: cannot fast-forward merge upstream/main"
  git status
  exit 1
fi

git push origin main

echo "Sync successful."

#!/bin/bash

# Replace "main" with the specific branch you want to allow
TARGET_BRANCH="production"

echo "Checking deployment branch... Current branch is: $VERCEL_GIT_COMMIT_REF"

if [ "$VERCEL_GIT_COMMIT_REF" == "$TARGET_BRANCH" ]; then
  echo "✅ Target branch matched. Proceeding with deployment."
  exit 1 # Exit code 1 tells Vercel to BUILD
else
  echo "🛑 Branch does not match target. Skipping deployment."
  exit 0 # Exit code 0 tells Vercel to CANCEL/SKIP the build
fi
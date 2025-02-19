#!/bin/bash

echo "WELCOME"

echo "Test" > bla.txt

if ! git remote | grep -q origin; then
  git remote add origin https://$GITHUB_TOKEN@github.com/$VERCEL_GIT_REPO_OWNER/$VERCEL_GIT_REPO_SLUG.git
fi

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

git add -A
git commit -m "Automated commit from Vercel CI/CD"
git push origin HEAD:main

#!/usr/bin/bash

git status
echo ""
git add *
git commit -m "Updates on $(date)"
echo ""
git push
echo ""
git status
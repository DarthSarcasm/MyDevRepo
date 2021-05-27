#!/bin/ksh

# A script to create a new SVN repository
# Set this to the location where you want to store your repositories
reporoot=/Library/Subversion/Repository/
# This is the name of the projects root folder
projdir=Projects

# Create new repository
print -n "Enter new repository name:"
read repo

echo
echo Creating repository $repo
svnadmin create $reporoot/$repo

echo
echo Creating projects directory
svn mkdir -m "Directory for Projects" file://$reporoot/$repo/$projdir

echo
echo Repository Creation Complete!
echo Start adding new projects
echo
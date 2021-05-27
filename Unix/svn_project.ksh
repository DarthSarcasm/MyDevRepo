#!/bin/ksh

# A script to create a new SVN project directory
# Replace this with the path of your Repository and Projects folder
reporoot=/Library/Subversion/Repository/YourRepositoryName
# Create new project
print -n "Enter new project name:"
read project
# Clean up local tmp directory
rm -rf /tmp/project
echo
echo Creating temporary directories
mkdir -p /tmp/project/$project/trunk /tmp/project/$project/branches /tmp/project/$project/tags
echo
echo Importing $project into Subversion
svn import /tmp/project/ file://$reporoot -m "Initial import"
echo
echo Cleaning up...
rm -rf /tmp/project
echo
echo "Directories Created!"
echo "Import your project through SCM in Xcode"
echo
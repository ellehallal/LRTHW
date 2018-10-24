#Study drills

#1. a ruby gem, whichi s a self contained library / program.
#It contains code a gemspec, documentation, tests and more

#2. gemspec - contains meta information relating to the gem
# tests - dir containing tests for the gem
# lib - code for the gem lives here
# bin - binary - contains executable files
# doc - contains gem documentation
# Rakefile - contains rake program which automates tests
# data - stores application data
# ext - contains application extensions

#When trying to run gem build bonjour.gemspec, the following error pops up:
# WARNING:  See http://guides.rubygems.org/specification-reference/ for help
# ERROR:  While executing gem ... (Gem::InvalidSpecificationException)
#     ["bin/bin/bonjour"]

#Followed this guide instead to create a gem:
#https://guides.rubygems.org/make-your-own-gem/

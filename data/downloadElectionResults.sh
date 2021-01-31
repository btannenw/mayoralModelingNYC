#!/bin/bash


# *** 1. Create directory for 2017 primary
mkdir primary2017
cd primary2017

# **A. Get .csv/.pdf of 2017 mayoral primary votes by election district / recap
wget https://vote.nyc/sites/default/files/pdf/election_results/2017/20170912Primary%20Election/01101100000New%20York%20Democratic%20Mayor%20Citywide%20EDLevel.csv
wget https://vote.nyc/sites/default/files/pdf/election_results/2017/20170912Primary%20Election/01101100000New%20York%20Democratic%20Mayor%20Citywide%20Recap.csv 

wget https://vote.nyc/sites/default/files/pdf/election_results/2017/20170912Primary%20Election/01101100000New%20York%20Democratic%20Mayor%20Citywide%20EDLevel.pdf
wget https://vote.nyc/sites/default/files/pdf/election_results/2017/20170912Primary%20Election/01101100000New%20York%20Democratic%20Mayor%20Citywide%20Recap.pdf 

for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done
cd ..

# *** 2. Create directory for 2013 primary
mkdir primary2013
cd primary2013

# ** A. Download PDFs of district breakdown, no csv :(
wget https://vote.nyc/sites/default/files/downloads/pdf/results/2013/2013SeptemberPrimaryElection/01011000001New%20York%20Democratic%20Mayor%20Citywide%20Recap.pdf
wget https://vote.nyc/sites/default/files/downloads/pdf/results/2013/2013SeptemberPrimaryElection/01011000002Bronx%20Democratic%20Mayor%20Citywide%20Recap.pdf
wget https://vote.nyc/sites/default/files/downloads/pdf/results/2013/2013SeptemberPrimaryElection/01011000003Kings%20Democratic%20Mayor%20Citywide%20Recap.pdf
wget https://vote.nyc/sites/default/files/downloads/pdf/results/2013/2013SeptemberPrimaryElection/01011000004Queens%20Democratic%20Mayor%20Citywide%20Recap.pdf
wget https://vote.nyc/sites/default/files/downloads/pdf/results/2013/2013SeptemberPrimaryElection/01011000005Richmond%20Democratic%20Mayor%20Citywide%20Recap.pdf

wget https://vote.nyc/sites/default/files/downloads/pdf/results/2013/2013SeptemberPrimaryElection/01011000000Citywide%20Democratic%20Mayor%20Citywide%20Recap.pdf

for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done
cd ..

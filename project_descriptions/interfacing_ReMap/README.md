# Interfacing ReMap2020 (in dev locally) with REST API

## Motivation

We are currently developping the new web interface of ReMap. 
It runs on: 
- Laravel
- AdminLTE template
- MySQL
- Adminer
We want to make our resource interoperable. 

## How to plug REST to ReMap/Laravel 
- Ask Aziz & Thomas
- Which tool to use

## Which REST queries to make ?
Ask users, and list below the queries.
- Fetch all available datasets given a TF name
- Fetch all available datasets given a Biotype name

## Deliverable
- The lsiting of all needed REST queries
- Basic REST interface for ReMap2020
- Basic Documentation of REST code

## Entry points

###  Entry point - ReMap classic
 - TF entry (by species) - return all peaks BED
 - Biotype (by species) - return all peaks BED
 - GSE dataset ID (by species) - return all peaks BED
 - For a given TF, give me all datasets, and then get the peaks (BED)

Output: Return a BED (not gzipped?) - plain text
Limit requests per seconds (20 requests /second)

Trying laravel eloquent

### Entry points 
 - Genomic range query
 - need to try mongodb

Output: BED

## MongoDB
Lets try mongodb from https://hub.docker.com/_/mongo 

docker pull mongo

– Create database
docker run --name mongo-testremap -d mongo:xenial
a6dc9cc10c153128e640361f16ca3ccb89ee2b6b5312a28f3ed1a16ddea9be33

- Run bash
docker exec -it mongo-testremap  bash

- Run mongo import
docker exec -it mongo-testremap  mongoimport --help

- Get the peaks (2015 for small file)
wget http://pedagogix-tagc.univ-mrs.fr/remap/download/remap2015/hg38/MACS/remap2015_all_macs2_hg38_v1.bed.gz
gunzip remap2015_all_macs2_hg38_v1.bed.gz 

- Import peaks
https://stackoverflow.com/questions/31514688/how-to-use-mongoimport-for-specific-fileds-from-tsv-file
docker exec -it mongo-testremap  mongoimport --db mongo-testremap --collection peaks  --type tsv --file remap2015_all_macs2_hg38_v1.bed  --fields chr,start,name,score,strand,thickStart,thickEnd,itemRgb





## Expected attendees
 - Benoit Ballester
 - Aziz Kan
 - Aurélie Bergon
 - Fabrice Lopez
 - Thomas Rosnet



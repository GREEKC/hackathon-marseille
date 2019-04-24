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






## Expected attendees
 - Benoit Ballester
 - Aziz Kan
 - Aurélie Bergon
 - Fabrice Lopez
 - Thomas Rosnet



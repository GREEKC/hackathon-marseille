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

## User needs - Questions - REST entry points

- ReMap: Give me all peaks for a region
- ReMap: Give me all peaks for a region set
- ReMap: Give me all peaks for a given Biotype (cell type / tissue)
- ReMap: Give me all peaks for a set of TFs
- ReMap: Give me all peaks for a given TF
- ReMap : peak enrichment
	-I give you a set of peaks, I want the ReMap peaksets with significant overlap
R package already exists to do this, but it requires to download the whole peakset



## Entry points

###  Entry point - ReMap metadata
 - TF entry (by species) - return all peaks BED
 - Biotype (by species) - return all peaks BED
 - GSE dataset ID (by species) - return all peaks BED
 - For a given TF, give me all datasets, and then get the peaks (BED)

Output wanted: BED / JSON
Limit requests per seconds (20 requests /second)

Trying laravel eloquent

### Entry points - Peaks with coordinates query
We need to investigate the tools needed to code this. 

 - Genomic range query - a possibiliy
 - MongoDB : a nosql database - need to try mongodb

Output wanted: BED / JSON
Limit requests per seconds (20 requests /second)


### Using a different ORM (Object-relational mapping)
It appeared that we may need to change the way we communicate to the database, using Eloquent as ORM for Laravel. This will change fundamentaly our code, which need to be updtaed. This involve extra coding time. 

- Moving from MySQL access to Eloquent (ORM)


## Coding first entry point - listying datasets for a given TF

```http://localhost:8090/REST_API/v1/tf=AR```


![First REST query](/images/remap_rest_tf_datasets.png)


## Coding second entry point - 





## Testing MongoDB - to insert 80M peaks
Lets try mongodb from https://hub.docker.com/_/mongo 

```docker pull mongo```

– Create database
```docker run --name mongo-testremap -d mongo:xenial ```
```a6dc9cc10c153128e640361f16ca3ccb89ee2b6b5312a28f3ed1a16ddea9be33```

- Run bash
```docker exec -it mongo-testremap  bash```

- Test mongo import
```docker exec -it mongo-testremap  mongoimport --help```

- Get the peaks (2015 for small file)
``` wget http://pedagogix-tagc.univ-mrs.fr/remap/download/remap2015/hg38/MACS/remap2015_all_macs2_hg38_v1.bed.gz ```
``` gunzip remap2015_all_macs2_hg38_v1.bed.gz ```


- Start your mongo container like this:

``` docker run --name mongo-testremap -v /my/own/datadir:/data/db -d mongo ```

The ```-v /my/own/datadir:/data/db``` part of the command mounts the ```/my/own/datadir``` directory from the underlying host system as /data/db inside the container, where MongoDB by default will write its data files.



- Import peaks See :
https://stackoverflow.com/questions/31514688/how-to-use-mongoimport-for-specific-fileds-from-tsv-file

``` docker exec -it mongo-testremap  mongoimport --db mongo-testremap --collection peaks  --type tsv --file remap2015_all_macs2_hg38_v1.bed  --fields chr,start,name,score,strand,thickStart,thickEnd,itemRgb  ```


## Expected attendees
 - Benoit Ballester
 - Aziz Kan
 - Aurélie Bergon
 - Fabrice Lopez
 - Jeanne Cheneby
 - David Salagado
 - Thomas Rosnet



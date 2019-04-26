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

* ReMap: Give me all peaks for a region coordinate (chr1:12334:68090)
	* Allow filters by species, TF name, biotype 
* ReMap: Give me all peaks for a set of region coordinates (bed file, or (chr1:12334:68090;chrX:6666:9999))
	* Allow filters by species, TF name, biotype 
* ReMap: Give me all peaks for a given Biotype (MCF-7 / Liver)
	* Allow filters by species, TF name
* ReMap: Give me all peaks for a set of TFs (ESR1, AR, CTCF)
	* Allow filters by species
* ReMap: Give me all peaks for a given TF (AR)
	* Allow filters by species

* ReMap : peak enrichment (input paramters as JSON file for the ReMapEnrich)
	* I give you a set of peaks, I want the ReMap peaksets with significant overlap
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

 - **GenomicRange** query - a possibiliy
 - **MongoDB** : a nosql database - need to try mongodb

Output wanted: BED / JSON
Limit requests per seconds (20 requests /second)


### Using a different ORM (Object-relational mapping)
It appeared that we may need to change the way we communicate to the database, using Eloquent as ORM for Laravel. This will change fundamentaly our code, which need to be updtaed. This involve extra coding time. 

- Moving from MySQL access to **Eloquent** (ORM)


## Coding 1st entry point - listing datasets for a given TF
This uses MySQL stored procedures 

```http://localhost:8090/REST_API/v1/tf=STAT3```


![First REST query](/images/remap_rest_datasets.png)


## Coding 2nd entry point - listing Targets
This is uses Eloquent ORM, lists the table target_label

![First REST query](/images/remap_rest_targets.png)


## Coding 3rd entry point - Experiments
This is uses Eloquent ORM, lists the table Experiments, with target, and experiemnt_info

![First REST query](/images/remap_rest_experiments.png)



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


-- **STUCK here**

## Conclusion

* We have three REST entry points on the ReMap metadata
	* This allowed us to understand the basic of Laravel interlaced worth an ORM 
* We are investigating the deplyoment of a NOSQL databse (MongoDB) to test queries on our Peak sets. 
* We may need to setup the REST server using a different framework than Laravel and lighter (Lumen).



## Expected attendees
 - Benoit Ballester
 - Aziz Kan
 - Aurélie Bergon
 - Fabrice Lopez
 - Jeanne Cheneby
 - David Salagado
 - Thomas Rosnet



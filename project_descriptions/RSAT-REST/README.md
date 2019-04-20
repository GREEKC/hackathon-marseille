# REST interface for RSAT


## Project proponent

- [Jacques van Helden](https://github.com/jvanheld), Institut Français de Bioinformatique (IFB), Aix-Marseille Université (AMU), France

## Expected participants

- Jacques van Helden
- Thuy Nga Thi Nguyen
- Aziz Khan
- Jaime Castro-Mondragon
- Yvon Mbouamboua
- Thomas Rosnet
- ... any other interested participant

## Motivation

**¨Regulatory Sequence Analysis Tools** (**RSAT**) is a specialised software suite for the detection of cis-regulatory elements in non-coding sequences.

RSAT Web services were originally based on SOAP/WSDL, a professional standard developed in the years 2000, which is hard to mainain, and is not supported anymore by R. Bioinformatics resources are currently adopting the REST standard for their Web services. 

Thuy Nga Thi Nguyen (Ecole Normale Supérieure, Paris, France), who developed the new interfaces to RSAT ([Nguyen et al., 2018](https://www.ncbi.nlm.nih.gov/pubmed/?term=29722874)), recently implemented a first version of REST Web services, currently restricted to a handful of entry point for specific tool: 

- supported-organisms
- peak-motifs
- variation-info

## Goals


1. Add entry points required for the other hacking projects of this hackathon (in particular the project "Workflow for the analysis of disease-associated regulatory variants").

2. Add entry points for some recently developed RSAT tools (e.g. matrix-clustering)

3. Develop a detailed documentation for the existing and new entry points. 

4. Implement small test and demo scripts invoking these web services with various languages.


## Mobilized resources


| Resource name | Data types |  URL | 
|-----------------|----------------------------------|----------------------------------|
| RSAT | Regulatory Sequence Analysis Tools |  <http://rsat.eu> | 
| RSAT REST | Prototype of the RSAT REST Web services | <http://rsat-tagc.univ-mrs.fr/rest/> |


## Languages, libraires and tools

- The REST server is developed in Perl with the flask library
- The clients can be developed in any language

## Requested skills for the hacking

- REST API development
- Code documentation
- Scripting of REST clients in any language (Perl, python, java, R)


## Expectated deliveries

### Final goal

At the end of the hackathon, we aim at providing a fully automated workflow relying as much as possible on APIs wihout having to download the full datasetsa dn parse them locally. 


### Intermediate goals and milestones

After day 1, ...

After day 2, ...

### Deliverables

- REST interfaces for all the tools required by other hacking projects
- A proper documentation of each entry point
- Test / demo scripts in various languages
- A first version of a user guide to RSAT REST Web services


# PSICQUIC for causal interactions and network modelling


## Project proponent

- [Noemi del Toro](https://github.com/noedelta), EMBL-EBI, UK

## Motivation

PSICQUIC (http://www.ebi.ac.uk/Tools/webservices/psicquic/view/) is an effort from the HUPO Proteomics Standards Initiative (HUPO-PSI) (http://www.psidev.info/) to standardise programmatic access to molecular interaction databases. Basically, PSICQUIC defines a minimum set of standard SOAP and REST methods to be implemented by every molecular interaction provider. These methods accept a MIQL query (http://psicquic.github.io/MiqlReference28.html) as input (MIQL defines a set of standard fields to query molecular interaction data, extending the syntax of the Apache Lucene query language on which it is based) and return, as output, molecular interaction information in one of the standard formats (e.g. PSI-XML 2.5, PSI-MITAB 2.5, PSI-MITAB 2.6, PSI-MITAB 2.7, PSI-MITAB 2.8).

PSICQUIC can be reused inside of the GREEKC consortium to provide a way of distribute experimental and inferred knowledge about interactions involved in gene regulation. This knowledge can be used to fulfill several use cases or workflows, for example, in network modelling.


## Languages, libraries and tools used

PSICQUIC is written in Java. It is built with the help of Spring Framework, Solr for Java, and Apache CFX among others.


## Needs

Technical aspects:
- Extend PSICQUIC to support miTab 2.8 (work currently in progress)
 
Open discussions:

- Define the best terms to annotate properly the interactors involved in the interactions (e.g.: promoters, enhancers, CRM, etc.)
- Extend/adapt the current [data providers best practises](http://psicquic.github.io/DataDistributionBestPractices.html) in the context of gene regulation.
- Develop generic pipelines to help exporting causal interactions in miTab 2.8 Format (CausalTab), input file for the PSICQUIC service.


## Requested skills for the hacking

- Knowledge in Java
- SOAP/REST API development
- Alternative knowledge in any programming language

## Related works and references

- [PSICQUIC and PSISCORE: accessing and scoring molecular interactions](https://www.nature.com/articles/nmeth.1637)
- [A new reference implementation of the PSICQUIC web service](https://academic.oup.com/nar/article/41/W1/W601/1100276)
- [PSICQUIC documentation](http://psicquic.github.io/)
- [CausalTAB: the PSI-MITAB 2.8 updated format for signalling data representation and dissemination](https://doi.org/10.1093/bioinformatics/btz132)

## Related GitHub repositories

- [PSI-MI Validator GitHub repository](https://github.com/MICommunity/psi-mi-validator)
- [PSICQUIC GitHub Organization](https://github.com/PSICQUIC)

## Expected participants

- John Zobolas
- Vasundra Touré

## Expectated deliveries

### Final goal

At the end of the hackathon, we aim at providing the first causal PSICQUIC service based on causalTab data (e.g. SIGNOR miTab 2.8). 

### Intermediate goals and milestones

- Day 1: extend psi-jami library to incorporate the new miTab 2.8 standard format (causalTAB) (work currently in progress)
- Day 2: have a working miTab 2.8 dataset solr-indexed
- Day 3: create a new PSICQUIC service based in miTab 2.8 in a public server and add it to the registry


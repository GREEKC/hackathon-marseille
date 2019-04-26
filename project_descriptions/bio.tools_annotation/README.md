# Annotating resources on gene regulation in bio.tools + EDAM


## Project proponent

- [Jacques van Helden](https://github.com/jvanheld), Institut Français de Bioinformatique (IFB) + Aix-Marseille Université (AMU), France

## Expected participants

- Alban Gaignard
- John Ison (at distance)
- All the attendees representing bioinformatics resources during the hackathon
- All the attendees developing a workflow during the hackathon
- ... any other interested participant (registrations at day 1 of the hackathon)

## Motivation

The goal of this hacking project is to annotate the bioinformatics resources (tools, databases) and data types related to gene regulation in two specialised European databases developed in the context of ELIXIR projects. 

- [bio.tools](https://bio.tools/), a database of scientific and technical information about software tools, databases and services for bioinformatics and the life sciences. 

- [EDAM](http://edamontology.org/page), a comprehensive ontology of well-established, familiar concepts that are prevalent within bioinformatics and computational biology, including types of data and data identifiers, data formats, operations and topics.  

*These two complementary resources should enable us to formally describe any workflow as a graph connecting tools (associated to precise operations) and data (associated to precise data types).*

*Tool descriptions can also be exported as biotoolsSchema metadata, providing a formal description of the tool prone to exchange of metadata and tool description on Web sites.* 

During the hackathon, we will treat in priority the resources and objects used in the other hacking projects. 


## Mobilized resources

The table below provides the URL of each resource mobilised by the workflow, and indicates their API if availeble. 

| Resource name | Data types |  URL |
|-----------------|----------------|----------------|
| bio.tools | Database of bioinformatics tools and databases | <https://bio.tools/> |
| EDAM | ontology of data types and operations in bioinformatics | <http://edamontology.org/page> |
| EDAM browser | a user-friendly tool to browse and search EDAM ontology| <https://ifb-elixirfr.github.io/edam-browser/#operation_0238> |


## Requested skills for the hacking

- Knowledge of tools, databases and data types used in the field of gene regulation
- Ontologies

## Expectated deliveries

- a list of all the tools, database and data types/formats used in the other projects of the hackathon
- a description of as many as possible of these tools and database in bio.tools
- identifying all these the data types in EDAM and reporting the missing ones, with a particular focus on tools input and outputs parameters (EDAM operations)

## Final goal

At the end of the hackathon, we aim at providing a set of precisely described gene regulation resources, more easily findable/shareable, and composable into bioinformatics workflows. 

## Side project [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/GREEKC/hackathon-marseille/master?filepath=project_descriptions%2Fbio.tools_annotation%2FBio-Schema-org-experiments.ipynb)
A jupyter notebook demoing how Bio.Tools entries could be automatically transformed into BioSchema or Schema.org markup. 

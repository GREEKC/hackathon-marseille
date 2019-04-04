# A workflow to infer Transcription Factor - Target Gene regulatory interactions from the integration of ChIP-seq, Hi-C, RNA-seq and ATAC-seq data


## Project proponent

- Rafael Riudavets Puig, Norwegian University of Science and Technology, Norway

## Motivation

Transcription regulation is a complex process that involves the interaction of many regulatory layers. Different types of omics data let us peak into these different layers, but none of them gives us a complete view of the whole panorama. Integration of these different layers can potentially get us closer to viewing the bigger picture, where more complex hypotheses can be built and tested. Of course, the experimental setup is as important as the analysis framework. By designing experiments that allow us to finely activate a Transcription Factor followed by the assessment of the changes in all the known regulatory layers, we can potentially get an idea of the genes that are regulated by the affected Transcription Factor. 

Thus, the motivation of this project is to define a workflow going from the Wet lab to the Dry lab that will allow us to study the potential Target Genes of a specific Transcription Factor given a specific Biological context such as genome 3D organisation (Hi-C), chromatin marks (histone ChIP-seq), DNA accessibility (ATAC-seq), Transcription dynamics (RNA-seq) and Transcription Factor Binding events (Transcription Factor ChIP-seq).

### Interoperability issues

    

## Mobilized resources

The table below provides the URL of each resource mobilised by the workflow, and indicates their API if available:


| Resource name | Data types |  URL | Access mode in the workflow |
|-----------------|----------------|----------------|-------------------|
| ENCODE | ChIP-seq for experimental condition of interest | <https://www.encodeproject.org> | ftp download |
| ENCODE | Hi-C for experimental condition of interest |<https://www.encodeproject.org>| ftp download |
| ENCODE | RNA-seq for experimental condition of interest | <https://www.encodeproject.org> | ftp download |
| ENCODE | ATAC-seq for experimental condition of interest | <https://www.encodeproject.org> | ftp download |
| ENSEMBL | Annotated genes together with their location in the genome | <http://www.ensembl.org/index.html> | BioMart |

## Languages, libraries and tools used in the workflow

The workflow is written in R. Some reports might be generated using R Markdown. Another tool that might be used is the Integrative Genomics Viewer for visual interpretation and Figure creation. 

Main R packages
    
    - biomaRt
    - GenomicRanges
    - rtracklayer

## Needs



## Requested skills for the hacking

- NGS data analysis
- Data integration

## Expected participants



## Expected deliveries

- A workflow that allows the inference of Transcription Factor - Target Gene regulatory interactions given input data.
- A Transcription Factor - Target Gene interaction matrix. 

### Final goal

We aim at providing workflow that, given the necessary data types as input, will compute a gene regulation matrix. As an example, we aim at generating one of these matrices from an already existing dataset. 

### Intermediate goals and milestones

After day 1, ...

After day 2, ...

### Deliverables

- A workflow in R markdown document
- Examples of utilization with the selected study case
- Full code of the workflow available in github
- A user documentation enabling biologists to run the anlayses on  their own computer

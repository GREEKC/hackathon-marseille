# A workflow to infer Transcription Factor - Target Gene regulatory interactions from the integration of ChIP-seq, Hi-C, RNA-seq and ATAC-seq data


## Project proponent

- Rafael Riudavets Puig, Norwegian University of Science and Technology, Norway

## Motivation

Transcription regulation is a complex process that involves the interaction of many regulatory layers. Different types of omics data let us peak into these different layers, but none of them gives us a complete view of the whole panorama. Integration of these different layers can potentially get us closer to viewing the bigger picture, where more complex hypotheses can be built and tested. Of course, the experimental setup is as important as the analysis framework. By designing experiments that allow us to finely activate a Transcription Factor followed by the assessment of the changes in all the known regulatory layers, we can potentially get an idea of the genes that are regulated by the affected Transcription Factor. 

Thus, the motivation of this project is to design a workflow going from the Wet lab to the Dry lab that will allow us to study the potential Target Genes of a Transcription Factor given a specific Biological context such as genome 3D organisation (Hi-C), chromatin marks (histone ChIP-seq), DNA accessibility (ATAC-seq), Transcription dynamics (RNA-seq) and Transcription Factor Binding events (Transcription Factor ChIP-seq). To design this workflow, we will use the dataset from ENCODE that we describe below.

## The dataset

The dataset used to aid in the design and construction of the workflow can be found in ENCODE. Briefly, cells from the A549 cell line were treated with 100 nM of dexamethasone during different times. Dexamethasone is a glucocorticoid that induces its activity through the binding to the glucocorticoid receptor (NR3C1), which will then bind to the DNA and act as a Transcription Factor. Several measurements were taken at different time points after treatment. The available data types are:

   - Hi-C: to observe the 3D configuration of the genome before and after the treatment.
   - ChIP-seq (TF): to study the binding events of specific Transcription Factors before and after the treatment.
   - ChIP-seq (histones): used to see the chromatin landscape before and after the treatment.
   - RNA-seq: to study the changes in transcription dynamics after the treatment. 
   - ATAC-seq and DNAse-seq: to observe the DNA accessibility before and after the treatment. Although it has not been decided yet, we might focus only on the ATAC-seq dataset.

In parallel, we will also extract the genomic locations of genes in the genome from ENSEMBL.

## The dry lab workflow

The dry lab workflow will consist first on a stage of analysing the individual data types separately followed by the combination of the individual results to build the gene regulation matrix. Although the raw data is fully available, we will work with the already processed data to accelerate the development of the workflow. The basic steps are listed below, but there are some decisions that will need input from the participants:

1) Individual data types:
   - Hi-C: extract TADs from the files. 
   - ChIP-seq (TFs and histones): find consensus peaks between replicates.
   - RNA-seq: differential expression analysis between time points.
   - ATAC-seq / DNAse-seq: find consensus peaks between replicates.
   
2) Integration: 
   - TADs + ChIP-seq (TF) consensus peaks: determine the TF binding events within each TAD in the genome. 
   - Genes + TADs: determine to which TAD belongs each gene. 
   - Preliminary TF-TGs: there will be two main hypotheses going on at this point, one of them representing the classic model of gene regulation and the other one testing whether TADs are relevant or not in gene regulation. These are: (1) when a TF binds to the DNA, it will regulate the transcription of all genes within the same TAD; (2) a TF only regulates a gene relatively close to the promoter where the Transcription Factor bound.
   - Preliminary TF-TGs + ChIP-seq (histone marks): determine a landscape of potential activated / silenced genes to filter the preliminary TF-TG matrix. 
   - RNA-seq + TF-TGs: study potential enrichment of inferred Target Genes of NR3C1 in the list of differentially expressed genes. 

## Languages, libraries and tools used in the workflow

The workflow is written in R. Some reports might be generated using R Markdown. Another tool that might be used is the Integrative Genomics Viewer for visual interpretation and Figure creation. 

Main R packages
    
   - biomaRt
   - GenomicRanges
   - rtracklayer
   - DESeq2
    
## Requested skills for the hacking

- NGS data analysis:
  - Hi-C
  - ChIP-seq (histones or transcription factors)
  - RNA-seq
  - ATAC-seq
- Data integration approaches
- R

### Final goal

We aim at providing workflow that, given the necessary data types as input, will compute a gene regulation matrix. As an example, we aim at generating one of these matrices from the already existing dataset mentioned above. 

### Deliverables

- A workflow in R markdown document
- Examples of utilization with the selected study case
- Full code of the workflow available in github
- A user documentation enabling biologists to run the anlayses on  their own computer

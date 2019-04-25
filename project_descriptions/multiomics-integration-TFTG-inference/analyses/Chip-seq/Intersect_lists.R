#######################
## Intersect_lists.R ## 
#######################

## Given several files with coordinates in bed format, it returns a matrix of intersections in binary format. In this example, the matrix informs about the TFs (in columns) that are found within each ATAC-seq peak in a list (in rows). 

# Reading the coordinates of the ATAC-seq peakset file and creating a GRanges object.

data=read.table("../Downloads/ATAC.consensus.bed")
colnames(data)=c("chr","start","end","name")
data_gr=makeGRangesFromDataFrame(data,keep.extra.columns = T,ignore.strand = T,seqnames.field = "chr",start.field = "start",end.field = "end")


# Reading the coordinates of the TF peakset files in a loop and creating a GRanges object in each case. 
# Intersecting TF and ATAC-seq peak sets and storing the result in a list tf_int.

files <- list.files(path="./ChIPdata", pattern="*peaks.bed", full.names=T, recursive=T)
tf_int=list()

for (i in 1:length(files)){
  tf_data=read.table(files[i])
  colnames(tf_data)=c("chr","start","end")
  tf_gr=makeGRangesFromDataFrame(tf_data,keep.extra.columns = F,ignore.strand = T,seqnames.field = "chr",start.field = "start",end.field = "end")
  ov=findOverlaps(data_gr,tf_gr)
  m=data_gr[queryHits(ov)]
  tf_int[[i]]=m$name

}

# Creating an empty matrix and filling it with the data from the intersections.

int_mat=matrix(rep(0,nrow(data)),ncol=length(files),nrow=nrow(data))
colnames(int_mat)<-files
rownames(int_mat)<-data$name


for (x in rownames(int_mat)){
  for (y in 1:ncol(int_mat)){
    if(x %in% tf_int[[y]]){
      print(x)
      int_mat[x,y]<-1
      } 
  }
}

write.table(int_mat,file="BED/IntersectionMatrix.txt",quote=F,col.names=T,row.names=T)

###

 if (!requireNamespace("BiocManager", quietly = TRUE))
   install.packages("BiocManager")
BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene", force = TRUE)
BiocManager::install("ChIPseeker")
BiocManager::install("clusterProfiler")

setwd("/Users/kostinanicka/desktop/study/биоинформатика/project/hse21_H3K36me3_G4_human")
getwd()

library(ChIPseeker)
library(TxDb.Hsapiens.UCSC.hg19.knownGene)
library(clusterProfiler)
library(org.Hs.eg.db)

###
OUT_DIR <- 'images/'
NAME <- 'H3K36me3_HEK293.ENCFF257ZFX.hg19.filtered'
#NAME <- 'H3K36me3_HEK293.ENCFF655QDU.hg19.filtered'
BED_FN <- paste0('data/', NAME, '.bed')

###

txdb <- TxDb.Hsapiens.UCSC.hg19.knownGene

peakAnno <- annotatePeak(BED_FN, tssRegion=c(-3000, 3000), TxDb=txdb, annoDb="org.Hs.eg.db")

#pdf(paste0(OUT_DIR, 'chip_seeker.', NAME, '.plotAnnoPie.pdf'))
png(paste0(OUT_DIR, 'chip_seeker.', NAME, '.plotAnnoPie.png'))
plotAnnoPie(peakAnno)
dev.off()

#peak <- readPeakFile(BED_FN)
#pdf(paste0(OUT_DIR, 'chip_seeker.', NAME, '.covplot.pdf'))
#covplot(peak, weightCol="V5")
#dev.off()
# 
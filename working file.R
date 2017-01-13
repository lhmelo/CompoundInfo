

Y <- xsAq.allpeaks


setwd("~/Desktop/Google Drive/3. Ingalls Lab/Compound info")
load("xsAq.allpeaks.RData")
Y <- xsAq.allpeaks
source("Target.Compounds_finder_121216_with_Target.Compound.picker.R")
TCList <- mfmatch(X,Y, "RP", 5,0.2)
Matches <- TCList$matches 
Target.Compound.Areas <- TCList$tca
Target.Compounds <- TCList$tcl


data <- read_csv("MRM_Methods_Table.csv")
column <- "RP"
Target.Compounds <- data[which(data[,'Column'] == column), c("Compound.Name", "mz", "RT")]
HILIC.Target.Compounds <- data[which(data[,'Column'] == "HILIC"), c("Compound.Name", "mz", "RT")]

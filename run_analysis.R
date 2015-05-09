## run_analysis.R
#
#    Course Project for "Getting and Cleaning Data"
#    May 2015


## ASSUMPTIONS
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
init_dir<-"UCI HAR Dataset"

## DOWNLOAD DATA
if(!file.exists(init_dir)){
     # Only download data if it is missing    
     DateDownloaded<-Sys.time()

     cat("Downloading File...")
     download.file(fileUrl,destfile="./smartphone.zip",method="curl", quiet=TRUE)
     cat(paste(c(rep(".",20)," DONE.\n"),sep="",collapse=""))
     
     cat("Unzipping File...")
     unzip("./smartphone.zip")
     file.remove("smartphone.zip")
     cat(paste(c(rep(".",22)," DONE.\n"),sep="",collapse=""))
     
     ## Create Log file to record date downloaded.
     f_con<-file("lastdownload.log",open="wt")
     writeLines(paste("Date Downloaded:",DateDownloaded),con=f_con)
     close(f_con)
}

## IMPORT DATA

## MERGE DATA

## CREATE TIDY DATA SET

## EXPORT TIDY DATA SET
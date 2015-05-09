## run_analysis.R
#
#    Course Project for "Getting and Cleaning Data"
#    May 2015


## ASSUMPTIONS
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
init_dir<-"UCI HAR Dataset"

if(!file.exists(init_dir)){
     # Only download data if it is missing    
     DateDownloaded<-Sys.time()

     download.file(fileUrl,destfile="./smartphone.zip",method="curl")
     unzip("./smartphone.zip")
     file.remove("smartphone.zip")
     
     ## Create Log file to record date downloaded.
     f_con<-file("lastdownload.log",open="wt")
     writeLines(paste("Date Downloaded:",DateDownloaded),con=f_con)
     close(f_con)
}
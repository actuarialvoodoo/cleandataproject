## run_analysis.R
#
#    Course Project for "Getting and Cleaning Data"
#    May 2015


## ASSUMPTIONS
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
init_dir<-"UCI HAR Dataset" 
outputfile.name<-"tidydata.txt"
logfile.name<-"lastdownload.log"

## LOAD DEPENDENCIES
library(dplyr)

######## DELETE THIS BLOCK BEFORE SUBMISSION
wd<-"/Users/rthomas/Documents/Coursera/Getting and Cleaning Data/project/"
setwd(wd)
#####################################################
## BEGIN DATA IMPORT FUNCTIONS
#
#  Below I define two functions which I use to import data from files in
#  the original data set. The common_info.load function is used to load the 
#  dataset feature names and activity descriptions which are common to both 
#  the train and test data sets. The dataset.load function is used to combine
#  the subject, activities, and features for the the train and test data sets
#  into a dataframe.

common_info.load<-function(filename,colnames){
     # This function loads common information which is applicable
     # to both test and train datasets 
     
     # BEGIN importing progress indicator
     process_str<-paste("Importing",filename,"...",collapse="")
     cat(process_str)
     
     # The following code block creates a system agnostic file path
     # loads the space delimited data into info and sets the colnames
     # equal to the column list provided. 
     fPath<-file.path(init_dir,filename)
     info<-read.table(fPath,sep=" ")
     colnames(info)<-colnames
     
     # END importing progress indicator
     cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))
     info
}

dataset.load<-function(folder){
     # This function loads the data set specified in the folder name
     # provided as an argument
     
     load.file<-function(x,f){
          # function is defined solely for use in the lapply statment below.
          # it loads the tab delimited data in either the train or test folders.
          fPath<-file.path(init_dir,f,paste(x,"_",f,".txt",sep="",collapse=""))
          data<-read.table(fPath)
          colnames(data)<-file.colnames[[x]]
          data
     }
     
     file.prefix<-c("subject","y","X")
     file.colnames<-list("X"=features$colname,"y"=c("activitycode"),"subject"=c("subjectcode"))
     
     # BEGIN importing progress indicator
     process_str<-paste("Importing",folder,"Data...",collapse="")
     cat(process_str)
     
     data<-lapply(file.prefix,load.file,folder)
     names(data)<-file.prefix
     
     # make the activity labels prettier by making them lower case
     activity_names<-tolower(sub("_","",activities$label[data$y[,1]]))
     
     # Only use the columns that are means or standard deviations
     use_columns<-grepl("mean\\(\\)|std\\(\\)",colnames(data$X))
     
     # END importing progress indicator
     cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))
     
     cbind(subject=data$subject,activity=activity_names,data$X[,use_columns])
     
}
    
## END DATA IMPORT FUNCTIONS
###################################################

## Main Script Execution Starts Here.
## DOWNLOAD DATA
if(!file.exists(init_dir)){
     # Only download data if it is missing    
     DateDownloaded<-Sys.time()
     
     # BEGIN download file progress indicator
     process_str<-"Downloading File..."
     cat(process_str)
     
     download.file(fileUrl,destfile="./smartphone.zip",method="curl", quiet=TRUE)
     
     # END download file progress indicator
     cat(paste(c(rep(".",50-nchar(process_str))," DONE.\n"),sep="",collapse=""))
     
     # BEGIN Unzip and Delete file progress indicator
     process_str<-"Unzipping File..."
     cat(process_str)
     
     unzip("./smartphone.zip",exdir=init_dir)
     file.remove("smartphone.zip")
     
     # This following lines of code ensure that data is downloaded into
     # the init_dir folder. It's a bit of a hack as I couldn't figure out
     # how to get unzip to extract to a directory I specified without 
     # everything winding up in UCI HAR Dataset as a subdirectory of 
     # init_dir
     tmp_wd<-getwd()
     setwd(file.path(init_dir,"UCI HAR Dataset"))
     file.copy(".","../", recursive = TRUE)
     setwd("../")
     unlink("UCI HAR Dataset", recursive=TRUE)
     setwd(tmp_wd)
     
     # END Unzip and Delete file progress indicator
     cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))
     
     ## Create Log file to record date downloaded.
     f_con<-file(logfile.name,open="wt")
     writeLines(paste("Date Downloaded:",DateDownloaded),con=f_con)
     close(f_con)
}else{
     cat("Data already exists. Skipping Download.\n")
}

## IMPORT DATA
# Load features names and activity labels
features<-common_info.load("features.txt",c("colnum","colname"))
activities<-common_info.load("activity_labels.txt",c("code","label"))

# LOAD TEST AND TRAIN DATA
data_test<-dataset.load("test")
data_train<-dataset.load("train")

## MERGE DATA
data_total<-rbind(data_test,data_train)
rm(data_test,data_train)

## TIDY UP THE COLUMN NAMES
source("prettycolnames.R")
names(data_total)<-pretty.colnames

## CREATE TIDY DATA SET using ever useful dplyr package
tidydf<-data_total %>% group_by(subject, activity) %>% summarise_each(funs(mean))

## EXPORT TIDY DATA SET
# BEGIN saving tidy dataset progess indicator
process_str<-"Saving Tidy Data Set..."
cat(process_str)

write.table(tidydf,file=outputfile.name, row.name=FALSE)

# END saving tidy dataset progress indicator 
cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))

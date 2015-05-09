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
     process_str<-"Downloading File..."
     cat(process_str)
     download.file(fileUrl,destfile="./smartphone.zip",method="curl", quiet=TRUE)
     cat(paste(c(rep(".",50-nchar(process_str))," DONE.\n"),sep="",collapse=""))
     
     process_str<-"Unzipping File..."
     cat(process_str)
     unzip("./smartphone.zip")
     file.remove("smartphone.zip")
     cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))
     
     ## Create Log file to record date downloaded.
     f_con<-file("lastdownload.log",open="wt")
     writeLines(paste("Date Downloaded:",DateDownloaded),con=f_con)
     close(f_con)
}else{
     cat("Data already exists. Skipping Download.\n")
}

## IMPORT DATA
# Load features names and activity lables
process_str<-"Importing Features..."
cat(process_str)
fPath<-file.path(init_dir,"features.txt")
features<-read.table(fPath,sep=" ")
colnames(features)<-c("colnum","colname")
cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))

process_str<-"Importing Activity Labels..."
cat(process_str)
fPath<-file.path(init_dir,"activity_labels.txt")
activities<-read.table(fPath, sep=" ")
colnames(activities)<-c("code","label")
cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))

# Load test data
process_str<-"Importing Test Data..."
cat(process_str)

fPath<-file.path(init_dir,"test","X_test.txt")
test_measures<-read.table(fPath)
colnames(test_measures)<-features$colname

fPath<-file.path(init_dir,"test","y_test.txt")
test_activity_codes<-read.table(fPath)
colnames(test_activity_codes)<-c("activitycode")

fPath<-file.path(init_dir,"test","subject_test.txt")
test_subjects<-read.table(fPath)
colnames(test_subjects)<-c("subjectcode")

cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))

activity_names<-tolower(activities$label[test_activity_codes$activitycode])
## MERGE DATA

## CREATE TIDY DATA SET

## EXPORT TIDY DATA SET
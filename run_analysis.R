## run_analysis.R
#
#    Course Project for "Getting and Cleaning Data"
#    May 2015


## ASSUMPTIONS
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
init_dir<-"UCI HAR Dataset" 

## HELPER FUNCTIONS
common_info.load<-function(filename,colnames){
     # This function loads common information which is applicable
     # to both test and train datasets.
     
     # BEGIN progress indicator
     process_str<-paste("Importing",filename,"...",collapse="")
     cat(process_str)
     
     # The following code block creates a system agnostic file path
     # loads the space delimited data into info and sets the colnames
     # equal to the column list provided. 
     fPath<-file.path(init_dir,filename)
     info<-read.table(fPath,sep=" ")
     colnames(info)<-colnames
     
     # END progress indicator
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
     
     process_str<-paste("Importing",folder,"Data...",collapse="")
     cat(process_str)
     
     data<-lapply(file.prefix,load.file,folder)
     names(data)<-file.prefix
     
     # make the activity labels prettier
     activity_names<-tolower(activities$label[data$y[,1]])
     
     # Only use the columns that are means or standard deviations
     use_columns<-grepl("mean\\(\\)|std\\(\\)",colnames(data$X))
     
     cat(paste(c(rep(".",50 - nchar(process_str))," DONE.\n"),sep="",collapse=""))
     
     cbind(subject=data$subject,activity=activity_names,data$X[,use_columns])
     
}

## Script Execution Starts Here.
## DOWNLOAD DATA
if(!file.exists(init_dir)){
     # Only download data if it is missing    
     DateDownloaded<-Sys.time()
     
     # Download file
     process_str<-"Downloading File..."
     cat(process_str)
     
     download.file(fileUrl,destfile="./smartphone.zip",method="curl", quiet=TRUE)
     
     cat(paste(c(rep(".",50-nchar(process_str))," DONE.\n"),sep="",collapse=""))
     
     # Unzip and Delete file
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
features<-common_info.load("features.txt",c("colnum","colname"))
activities<-common_info.load("activity_labels.txt",c("code","label"))

# Load test data
data_test<-dataset.load("test")
data_train<-dataset.load("train")
## MERGE DATA
data_total<-rbind(data_test,data_train)
rm(data_test,data_train)

## CREATE TIDY DATA SET

## EXPORT TIDY DATA SET


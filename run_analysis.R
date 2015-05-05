#if(!file.exists("rawdata")){
#     dir.create("rawdata")
#}

DateDownloaded<-Sys.time()
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileUrl,destfile="./smartphone.zip",method="curl")

unzip("./smartphone.zip")
file.remove("smartphone.zip")

## Create Log file to record date downloaded.
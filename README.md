# Getting and Cleaning Data Course Project README

## What run_analysis.R does

The run_analysis.R script contains all of the steps necessary to create two tidy datasets from the raw data from {DATA SET NAME AND SOURCE}. It will download the zip file which contains this data from the internet if you haven't already done so. If the script does downloaded the data from the internet then a log file with the day and time the data was downloaded is written to the current working directory. 

The script will write progress messages to the console to let you know what it's currently doing. After the script is finished running there will be a tidy dataset which contains every mean and standard deviation measurement in the original dataset saved in a data frame called data_total. The script also creates a second tidy data frame called tidydf which written to a text file. 

## Assumptions & Dependencies

<b>Please read through this section before sourcing the run_analysis.R file.</b>

The first section of the run_analysis.R file is labeled as "ASSUMPTIONS". It contains several variables that can be changed by the user if needed or desired. 

fileUrl: This is the location on the internet that the UCI dataset comes from. This is specified in the assignment so there shouldn't be any reason to change, but I thought it made the script more readable to assign this URL to a variable and use the variable in the actuary code.
Default value: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

init_dir: This is the name of the directory which contains the UCI data which was downloaded from fileUrl. The default value assumes that that zip file was downloaded from the internet and unzipped using R's unzip function. If you have already downloaded the data from the internet and saved it a folder with a different name you should set init_dir equal to this directory and set the working directory to the containing folder before sourcing this script.
Default Value: "UCI HAR Dataset"

outputfile.name: This is the name that the script will use to write a copy of the final tidy dataset to a file.
Default Value: "tidydata.txt"

logfile.name: This is the name of the file that will be used to record the date and time the zipped data file was downloaded from the internet.
Default Value: "lastdownload.log"

## Use of run_analysis.R script

By default, the run_analysis.R script with check to see if there is a directory called "UCI HAR Dataset" in the current working directory. If the directory doesn't exist it will download the dataset from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip". The "UCI HAR Dataset" will be created by unzipping the downloaded file. If you have already downloaded the zip file, you will need to unzip it manually for the script to work. If you have unzipped the 

## Dependencies

The run_analysis.R script assumes that you have the dplyr package installed. It will automatically load the library prior to creating the final tidy dataset.


## Original Data Source
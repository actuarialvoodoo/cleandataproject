# README Getting and Cleaning Data Course Project

## What run_analysis.R does?

The run_analysis.R script contains all of the steps necessary to create two tidy datasets from the raw data from UCI Machine Learning Repository. It will download the zip file which contains this data from the internet if you haven't already done so. 

The script will write progress messages to the console to let you know what it's currently doing. After the script is finished running there will be a tidy dataset which contains every mean and standard deviation measurement in the original dataset saved in a data frame called data_total. The script also creates a second tidy data frame called tidydf which is written to a text file. 

## Assumptions & Dependencies

**Please read through this section before sourcing the run_analysis.R file.**

The run_analysis.R script checks to see if **init_dir** exists in the current working directory. If the **init_dir** is found, then the script expects to find the UCI HAR Dataset in **init_dir** and loads data from the text files contained within the data set. If the **init_dir** folder cannot be found, the script will attempt to download the data from the internet (from **fileUrl**) and create **init_dir**.

If you have already downloaded the data from the internet, you should unzip the data into a folder and set **init_dir** equal to that folder. You should also set the working directory equal to the directory which contains **init_dir** before running run_analysis.R

### Assumptions
The first section of the run_analysis.R file is labeled as "ASSUMPTIONS". It contains several variables that can be changed by the user if needed or desired. 

- **fileUrl**: This is the location on the internet that the UCI dataset comes from. This is specified in the assignment so there shouldn't be any reason to change, but I thought it made the script more readable to assign this URL to a variable and use the variable in the actual code.

*Default Value*: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

- **init_dir**: This is the name of the directory which contains the UCI data which was downloaded from fileUrl. The default value assumes that that zip file was downloaded from the internet and unzipped using R's unzip function. If you have already downloaded the data from the internet and saved it a folder with a different name you should set init_dir equal to this directory.

*Default Value*: "UCI HAR Dataset"

 - **outputfile.name**: This is the name that the script will use to write a copy of the final tidy dataset to a file.

*Default Value*: "tidydata.txt"

 - **logfile.name**: This is the name of the file that will be used to record the date and time the zipped data file was downloaded from the internet.

*Default Value*: "lastdownload.log"

### Dependencies
The run_analysis.R script assumes that you have the dplyr package installed. It will automatically load the library prior to creating the final tidy dataset.

The run_analysis.R script utilizes another script called prettycolnames.R which is sourced on line 147 of the run_analysis.R script. All this script does is to create a vector with "pretty" column names that I created in Excel. I decided to replace the column names from the original data set with these "pretty" column names. I did this for several reasons. First, the some of the original column names contained the word "Body" multiple times, which I believe was an error. Secondly, I thought the "-" and "()" symbols in the names kept the column names from being completely tidy. Finally, I thought it was informative to explain that the "t" and "f" in the original variable names stood for time and frequency, so I have made that explicit in my pretty column names.

## Use of run_analysis.R script

By default, the run_analysis.R script with check to see if there is a directory called **init_dir**  in the current working directory. If the directory doesn't exist it will download the dataset from **fileUrl** and save it into **init_dir**. The script expects that either the data has already been downloaded in **init_dir** or that it needs to download the data from the internet. If you have already downloaded the zip file, please unzip the file manually and set the value of **init_dir** in the run_analysis.R file to the name of the directory where you unziped the data. 

The run_analysis.R file assumes that the working directory is the directory that contains **init_dir**.

## Why is the data tidy?

I believe both of the data sets I have created in this assignment are tidy. They both meet the following criteria, which was discussed during the lectures of week 1.

1. Each variable you measure should be in one column.
2. Each different observation of that variable should be in a different row.

I have transformed the names of columns to be informative although they still contain abbreviations. I thought it was useful to have column names that were not too long and I was concerned that spelling out accelerometer, gyroscope, and magnitutude would make them too long. Also, I decided to make the column names all lower case; I thought this might be preferrable than capitalizing some letters because I was concerned that there might be confusion as to when capitialization should be used if someone was keying in a column name by hand.
## How to read the text file back into R.

You can read the tidy data set created as part of step 5 in the assignment back into R using the following command. You will need to replace outputfile.name with a string containing the name of the text file.

```
mytidydf<-read.table(outputfile.name,header=TRUE, sep=" ")
```
## Original Data Source

The data originally came from the UCI Machine Learning Repository, where the data set is called "Human Activity Recognition Using Smartphone Data Set". You can find that data on [this website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
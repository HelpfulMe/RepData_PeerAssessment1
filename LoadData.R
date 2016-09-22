##------------------------------------------------------------------------------
## Becca Smith
## Reproducible Research - Johns Hopkins Coursera
## Peer Graded Assignment 1
## Date: September 21, 2016
##------------------------------------------------------------------------------

### Loading and preprocessing the data
# Instructions:
# Show any code that is needed to
# 1. Load the data (i.e. `read.csv()`)
# 2. Process/transform the data (if necessary) into a format suitable for your analysis

# For ReadMe:
# User: download activity data either from github repo or
# https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip
# Save file in working directory


# if file is from github, it will have zipped name of 'activity.zip'
# if file is from web, zipped name will be 'repdata%2Fdata%2Factivity.zip'

# See if data file is in working directory.  If not, get it
if(!file.exists("activity.zip")) {
    # see if download data (not from github) is there
    if(!file.exists("repdata%2Fdata%2Factivity.zip")) {
        # Neither file in working directory, download data
        fileURL <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
        download.file(fileURL, "activity.zip")
    } else {
        #downloaded file is there, rename
        file.rename("repdata%2Fdata%2Factivity.zip", "activity.zip")
    }
# extract
unzip("activity.zip")
}


# See if data read into R.  If not, read it.
if(!exists('activity')){
    # set up column classes
    classes <- c('numeric', 'Date', 'numeric')
    # read data
    activity <- read.csv("activity.csv", na.strings = "NA", colClasses = classes)
}

# check activity - 17568 observations of 3 variables

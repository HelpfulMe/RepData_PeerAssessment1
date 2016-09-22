##------------------------------------------------------------------------------
## Becca Smith
## Reproducible Research - Johns Hopkins Coursera
## Peer Graded Assignment 1
## Date: September 21, 2016
##------------------------------------------------------------------------------

### What is mean total number of steps taken per day?
# Instructions:
# For this part of the assignment, you can ignore the missing values in
# the dataset.
##------------------------------------------------------------------------------
# 1. Make a histogram of the total number of steps taken each day

# First make a dataset of the total steps per day
dailysteps <- aggregate(x=activity$steps, by=list(activity$date), FUN=sum,
                        na.rm=TRUE)
# dailysteps has 61 obs of 2 variables

# Then make a histogram of the total steps each day
hist(dailysteps$x,
     main="Histogram of Total Steps Per Day",
     xlab="Total Steps Per Day",
     ylab = "Frequency",
     border="blue",
     col="green")

##------------------------------------------------------------------------------
# 2. Calculate and report the **mean** and **median** total number of steps
# taken per day

# I interpreted this request as finding the mean and median of the total steps
# a day calculated in part 1.  This continues to explore the question of how
# many steps this subject took each day.

meansteps <- mean(dailysteps$x, na.rm = TRUE)         #9354.23
mediansteps <- median(dailysteps$x, na.rm = TRUE)     #10395

# Display in Rmd as
# The mean of the total number of steps taken per day is
# **`r format(round(meansteps, 2), nsmall = 2)`**.
# The median of the total number of steps taken per day is
# **`r format(round(mediansteps, 2), nsmall = 2)`**.
##------------------------------------------------------------------------------
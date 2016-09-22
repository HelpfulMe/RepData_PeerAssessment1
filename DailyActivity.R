##------------------------------------------------------------------------------
## Becca Smith
## Reproducible Research - Johns Hopkins Coursera
## Peer Graded Assignment 1
## Date: September 21, 2016
##------------------------------------------------------------------------------

### What is the average daily activity pattern?

##------------------------------------------------------------------------------
# 1. Make a time series plot (i.e. `type = "l"`) of the 5-minute interval
# (x-axis) and the average number of steps taken, averaged across all days
# (y-axis)

# Set up data: Find average number of steps for every 5-minute interval
intervalsteps <- aggregate(x=activity$steps, by=list(activity$interval),
                           FUN=mean,na.rm=TRUE)
# intervalsteps has 288 obs of 2 variables

# Plot using Base package
plot(intervalsteps$Group.1,
     intervalsteps$x,
     type="l",
     main="Average Number of Steps Per 5-Minute Interval",
     xlab="5-Minute Interval",
     ylab= "Number of Steps (Average)",
     col="blue",
     lwd=2)

##------------------------------------------------------------------------------
# 2. Which 5-minute interval, on average across all the days in the dataset,
# contains the maximum number of steps?

# Use which.max to return the row index of the highest average step count
# Then subset the data frame to return the 5-minute interval for that
# measurement
maxinterval <- intervalsteps[which.max(intervalsteps$x),1]

# Display in Rmd as
# The 5-minute interval that, on average across all the days in the dataset,
# contains the maximum number of steps is
# **`r maxinterval`** with **`r max(intervalsteps$x)`** steps.
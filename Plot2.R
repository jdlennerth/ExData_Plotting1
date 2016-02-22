## Date Created:   2/21/2016
## Created By:     Jeff Lennerth
## Purpose:        Create a time series plot of global active
## Power (kilowatts)
## 
## 

## Read data after downloading.
pwr <- read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

## subset data gives 2880 observations.
pwrcur <- subset(pwr,Date=='1/2/2007' | Date =='2/2/2007')

##open png plot
png(file = "Plot2.png")

## graph the global Active Power as a time series but don't do the
## axis right away

plot.ts(pwrcur$Global_active_power,axes=F,ylab="Global Active Power (kilowatts)",xlab="" )

## add the y axis
axis(2)

## add the x axis just bi-sect data with hardcoded labels. 
axis(1,labels=c("Thu","Fri","Sat"), at=c(1,1440,2880))

#box
box()

##close the plot
dev.off()

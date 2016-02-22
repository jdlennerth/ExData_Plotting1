## Date Created:   2/21/2016
## Created By:     Jeff Lennerth
## Purpose:        Create a Historgram of Frequency vs Global Active Power (kilowatts)
## 
## 

## Read data after downloading.
pwr <- read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

## subset data
pwrcur <- subset(pwr,Date=='1/2/2007' | Date =='2/2/2007')

##open png plot
png(file = "Plot1.png")

## graph the global Active Power
hist(pwrcur$Global_active_power,col='orange',xlab='Global Active Power (kilowatts)',main = 'Global Active Power')

##close the plot
dev.off()

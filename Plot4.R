## Date Created:   2/21/2016
## Created By:     Jeff Lennerth
## Purpose:        Create a 2 by 2 time series set of graphs
## 
## 
## 

## Read data after downloading.
pwr <- read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

## subset data gives 2880 observations.
pwrcur <- subset(pwr,Date=='1/2/2007' | Date =='2/2/2007')

##open png plot
png(file = "Plot4.png")

##Set up a 2X2 set of plots

par(mfrow=c(2,2))

## TOP LEFT
## graph the global Active Power as a time series but don't do the
## axis right away
plot.ts(pwrcur$Global_active_power,axes=F,ylab="Global Active Power (kilowatts)",xlab="" )
## add the y axis
axis(2)
## add the x axis just bi-sect data with hardcoded labels. 
axis(1,labels=c("Thu","Fri","Sat"), at=c(1,1440,2880))
#box
box()

##TOP RIGHT
## graph the voltage as a time series but don't do the
## axis right away
plot.ts(pwrcur$Voltage,axes=F,ylab="Voltage",xlab="datetime" )
## add the y axis
axis(2)
## add the x axis just bi-sect data with hardcoded labels. 
axis(1,labels=c("Thu","Fri","Sat"), at=c(1,1440,2880))
#box
box()

##BOTTOM LEFT
## graph the metering as a time series but don't do the
## axis right away
plot.ts(pwrcur$Sub_metering_1,axes=F,ylab="Energy sub metering",xlab="" )
## add the y axis
axis(2)
## add the other meterings
lines(pwrcur$Sub_metering_3,col="blue")
lines(pwrcur$Sub_metering_2,col="orange")
##add the x axis
axis(1,labels=c("Thu","Fri","Sat"), at=c(1,1440,2880))
##add legend
legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","orange","blue"))
#box
box()

##BOTTOM RIGHT
## graph the voltage as a time series but don't do the
## axis right away
plot.ts(pwrcur$Global_reactive_power,axes=F,ylab="Global_reactive_power",xlab="datetime" )
## add the y axis
axis(2)
## add the x axis just bi-sect data with hardcoded labels. 
axis(1,labels=c("Thu","Fri","Sat"), at=c(1,1440,2880))
#box
box()

##close the plot
dev.off()


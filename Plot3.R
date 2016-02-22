## Date Created:   2/21/2016
## Created By:     Jeff Lennerth
## Purpose:        Create a time series plot of the three sub meterings
## 
## 
## 

## Read data after downloading.
pwr <- read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

## subset data gives 2880 observations.
pwrcur <- subset(pwr,Date=='1/2/2007' | Date =='2/2/2007')

##open png plot
png(file = "Plot3.png")

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

##close the plot
dev.off()

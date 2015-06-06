data  <- read.csv("./household_power_consumption.txt",header = TRUE, sep = ";")
subdata <- data[((dateData == "2007-02-01") | (dateData == "2007-02-02")),]
subdata$DateTime <- as.POSIXct(paste(subdata$Date, subdata$Time), format="%d/%m/%Y %H:%M:%S")

bmp(filename = "plot3.bmp",width = 480, height = 480)

par(mfcol=c(1,1))
plot(subdata$DateTime,as.numeric(as.character(subdata$Sub_metering_1)),type="l",main="",xlab="",ylab="Energy sub metering",col="black")
lines(subdata$DateTime,as.numeric(as.character(subdata$Sub_metering_2)),type="l",main="",col="red")
lines(subdata$DateTime,as.numeric(as.character(subdata$Sub_metering_3)),type="l",main="",col="blue")
legend("topright",col=c("black","red","blue"),lwd=1, lty=1,pch=NA, merge=FALSE,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off() 
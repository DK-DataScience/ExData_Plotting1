data  <- read.csv("./household_power_consumption.txt",header = TRUE, sep = ";")
subdata <- data[((dateData == "2007-02-01") | (dateData == "2007-02-02")),]
subdata$DateTime <- as.POSIXct(paste(subdata$Date, subdata$Time), format="%d/%m/%Y %H:%M:%S")

bmp(filename = "plot2.bmp",width = 480, height = 480)

par(mfcol=c(1,1))
plot(subdata$DateTime,as.numeric(as.character(subdata$Global_active_power)),type="l",main="",xlab="",ylab="Global Active Power (kilowatts)")

dev.off() 
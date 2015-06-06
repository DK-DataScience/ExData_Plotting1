data  <- read.csv("./household_power_consumption.txt",header = TRUE, sep = ";")
dateData <- as.Date(data$Date,"%d/%m/%Y")
subdata <- data[((dateData == "2007-02-01") | (dateData == "2007-02-02")),]

bmp(filename = "plot1.bmp",width = 480, height = 480)

par(mfcol=c(1,1))
hist(as.numeric(as.character(subdata$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off() 

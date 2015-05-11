# plot1.R

hpcdata <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
index <- c(which(hpcdata$Date == "1/2/2007"), which(hpcdata$Date == "2/2/2007"))
pdata <- as.double(paste(hpcdata$Global_active_power[index]))

png(filename="plot1.png", width = 480, height = 480, units = "px")
hist(pdata, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

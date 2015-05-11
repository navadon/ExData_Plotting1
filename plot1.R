# plot1.R

hpcdata <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
index <- c(which(hpcdata$Date == "1/2/2007"), which(hpcdata$Date == "2/2/2007"))
pdata <- as.double(paste(hpcdata$Global_active_power[index]))
hist(pdata, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")

dev.copy(png, file = "plot1.png") 
dev.off()
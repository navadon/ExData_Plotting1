# plot1.R

data <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
index <- c(which(data$Date == "1/2/2007"), which(data$Date == "2/2/2007"))
pdata <- as.double(paste(data$Global_active_power[index]))
hist(pdata, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")

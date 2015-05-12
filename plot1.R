# plot1.R

# read data
hpcdata <- read.table("household_power_consumption.txt", sep=";", header = TRUE)

# subset data
index <- c(which(hpcdata$Date == "1/2/2007"), which(hpcdata$Date == "2/2/2007"))
pdata <- as.numeric(paste(hpcdata$Global_active_power[index]))

# Graphics device for PNG
png(filename="plot1.png", width = 480, height = 480, units = "px")

# plot data
hist(pdata, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")

# close graphics device
dev.off()

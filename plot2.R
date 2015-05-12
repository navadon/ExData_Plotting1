# plot2.R

# read data
hpcdata <- read.table("household_power_consumption.txt", sep=";", header = TRUE)

# subset data
date1 <- "1/2/2007"
date2 <- "2/2/2007"
idx1 <- which(hpcdata$Date == date1)
idx2 <- which(hpcdata$Date == date2)
index <- c(idx1, idx2)
pdata <- as.numeric(paste(hpcdata$Global_active_power[index]))

# Graphics device for PNG
png(filename="plot2.png", width = 480, height = 480, units = "px")

# plot data
plot(pdata,type="l",xaxt = "n",xlab="",ylab="Global Active Power (kilowatts)")

# set x-axis tickmark locations
xaxisat <- c(0,length(idx1),(length(idx1)+length(idx2)))

# set x-axis labels
d1 <- as.Date(date1,"%d/%m/%Y")
xaxislabels <- weekdays(c(d1,d1+1,d1+2),abbreviate=TRUE)

# apply x-axis settings
axis(1, at=xaxisat, labels=xaxislabels)

dev.off()


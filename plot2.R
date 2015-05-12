# plot2.R

# read data
# hpcdata <- read.table("household_power_consumption.txt", sep=";", header = TRUE)

# subset data
date1 <- "1/2/2007"
date2 <- "2/2/2007"

# idx1 <- min(which(hpcdata$Date == date1))
# idx2 <- max(which(hpcdata$Date == date2))
# index <- seq(idx1,idx2,by=1)

idx1 <- which(hpcdata$Date == date1)
idx2 <- which(hpcdata$Date == date2)
index <- seq(head(idx1,1),tail(idx2,1),by=1) # index <- c(idx1, idx2)

pdata <- as.numeric(paste(hpcdata$Global_active_power[index]))

# Graphics device for PNG
png(filename="plot2.png", width = 480, height = 480, units = "px")

# plot data
plot(pdata,type="l",xaxt = "n",xlab="",ylab="Global Active Power (kilowatts)")

# set x-axis tickmark locations
xaxisat <- seq(0, length(index), by=length(idx1))

# set x-axis labels
d1 <- as.Date(date1,"%d/%m/%Y")
d2 <- as.Date(date2,"%d/%m/%Y")
xaxislabels <- weekdays(seq(d1,d2+1,1), abbreviate=TRUE)

# apply x-axis settings
axis(1, at=xaxisat, labels=xaxislabels)

# close graphics device
dev.off()


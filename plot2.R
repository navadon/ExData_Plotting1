# plot2.R

hpcdata <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
index <- c(which(hpcdata$Date == "1/2/2007"), which(hpcdata$Date == "2/2/2007"))
pdata <- as.numeric(paste(hpcdata$Global_active_power[index]))
# ddata <- paste(as.Date(hpcdata$Date[index],"%d/%m/%Y"))

png(filename="plot2.png", width = 480, height = 480, units = "px")
plot(pdata,type="l",xaxt = "n",xlab="",ylab="Global Active Power (kilowatts)")
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
dev.off()


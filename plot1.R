# plot1.R

data <- read.table("household_power_consumption.txt", sep=";", header = TRUE)
hist(as.numeric(data$Global_active_power), col="red") 

setwd('/Users/hatem/projects/exdata/ExData_Plotting1')
source('loadExData.R')

# Load data
data <- loadExData()

# Open the png device
# Using values to make identical to the plot in figures/*
png('plot4.png', bg="transparent", width=504, height=504, units="px")

# draw plots
par(mfrow=c(2,2))

plot(data$Time, data$Global_active_power, "l", xlab="", ylab="Global Active Power")

plot(data$Time, data$Voltage, "l", xlab="datetime", ylab="Voltage")

plot(data$Time, data$Sub_metering_1, "l", xlab="", ylab="Energy sub metering")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
legend(
  "topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  col=c("black","red", "blue"), bty="n", lty=c(1,1,1)
)

plot(data$Time, data$Global_reactive_power, "l", xlab="datetime", ylab="Global_reactive_power")

# Save the plot
dev.off()
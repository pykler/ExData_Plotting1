setwd('/Users/hatem/projects/exdata/ExData_Plotting1')
source('loadExData.R')

# Load data
data <- loadExData()

# Open the png device
# Using values to make identical to the plot in figures/*
png('plot3.png', bg="transparent", width = 504, height = 504, units = "px")

# Generate the plot
plot(data$Time, data$Sub_metering_1, "l", xlab="", ylab="Energy sub metering")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
legend(
  "topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  lty=c(1,1,1), col=c("black","red", "blue")
)

# Save the plot
dev.off()
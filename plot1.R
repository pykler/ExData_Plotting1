setwd('/Users/hatem/projects/exdata/ExData_Plotting1')
source('loadExData.R')

# Load data
data <- loadExData()

# Open the png device
# Using values to make identical to the plot in figures/*
png('plot1.png', bg="transparent", width = 504, height = 504, units = "px")

# Generate the plot
hist(
  data$Global_active_power, col="red",
  main="Global Active Power", xlab="Global Active Power (kilowatts)"
)

# Save the plot
dev.off()

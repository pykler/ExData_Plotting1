setwd('/Users/hatem/projects/exdata/ExData_Plotting1')
source('loadExData.R')

# Load data
data <- loadExData()

# Open the png device
# Using values to make identical to the plot in figures/*
png('plot2.png', bg="transparent", width = 504, height = 504, units = "px")

# Generate the plot
plot(
  data$Time, data$Global_active_power, "l",
  ylab="Global Active Power (kilowatts)", xlab=""
)

# Save the plot
dev.off()
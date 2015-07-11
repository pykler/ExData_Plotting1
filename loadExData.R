setwd('/Users/hatem/projects/exdata/ExData_Plotting1')

loadExData <- function(){
    fn <- 'data/household_power_consumption.txt'
    first <- read.csv(fn, sep = ";", nrows=1)
    data <- read.csv(
      fn, sep = ";", na.strings="?", skip=66637, nrows=2880,
      header=FALSE, col.names=colnames(first)
    )
    data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S", tz="GMT")
    data$Date <- as.Date(data$Date , "%d/%m/%Y")
    return(data)
}

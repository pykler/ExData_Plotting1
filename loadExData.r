setwd('/Users/hatem/projects/exdata/ExData_Plotting1')

loadExData <- function(){
    data <- read.csv2(
        'data/household_power_consumption.txt', na.strings="?",
        skip=66636, nrows=2880
    )
    print(data[1,1])
    print(data[1,2])
    return(data)
}

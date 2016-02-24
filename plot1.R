## Read the file household power consumption

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE, dec='.')
subSetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

## sub set the Global Active Power Data

globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power")
dev.off()

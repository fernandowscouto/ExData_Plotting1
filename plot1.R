file_name <- "household_power_consumption.txt"
data <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
data <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
png(filename = "./plot1.png", width = 480, height = 480, units = "px", bg = "white")
hist(data[, 3], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

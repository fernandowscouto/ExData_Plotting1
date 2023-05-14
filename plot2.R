file_name <- "household_power_consumption.txt"
data <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
data <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
Sys.setlocale("LC_TIME", "English")
date_converted <- as.Date(data[, 1], format = "%d/%m/%Y")
time_converted <- strptime(data[, 2], format = "%H:%M:%S")
time_axis <- as.POSIXct(paste(date_converted, data[, 2]))
png(filename = "./plot2.png", width = 480, height = 480,  units = "px", bg = "white")
plot(time_axis, data[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()
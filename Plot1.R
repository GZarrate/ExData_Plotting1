ds <- read.table("household_power_consumption_2007.txt", header=TRUE, sep=";")
hist(ds$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
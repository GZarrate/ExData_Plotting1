ds <- read.table("household_power_consumption_2007.txt", header=TRUE, sep=";")
ds$NewDate <- with(ds, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))
par(mfrow = c(2,2))
with(ds, plot(NewDate, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

with(ds, plot(NewDate, Voltage, type="l", xlab="datetime", ylab="Voltage"))

plot(ds$NewDate, ds$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering")
lines(ds$NewDate, ds$Sub_metering_1)
lines(ds$NewDate, ds$Sub_metering_2, col="red")
lines(ds$NewDate, ds$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

with(ds, plot(NewDate, Global_reactive_power, type="l", xlab="datetime"))

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
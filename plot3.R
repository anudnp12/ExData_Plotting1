Elect <- read.table("~/R course/household_power_consumption.txt", 
                    header= T, sep = ";", stringsAsFactors = F, dec = "." )
sel_elect <- Elect[Elect$Date %in% c("1/2/2007","2/2/2007"), ]
sel_time <- strptime(paste(sel_elect$Date,sel_elect$Time, sep = " "),
                     format = "%d/%m/%Y %H:%M:%S")
Sub_met_1 <- as.numeric(sel_elect$Sub_metering_1)
Sub_met_2 <- as.numeric(sel_elect$Sub_metering_2)
Sub_met_3 <- as.numeric(sel_elect$Sub_metering_3)
png("plot3.png", width = 480, height = 480)
plot(sel_time,Sub_met_1, type="l", ylab = "Energy sub metering", xlab = " ")
lines(sel_time,Sub_met_2, col ="red")
lines(sel_time,Sub_met_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty =1, lwd=2,  
       col=c("black", "red", "blue"))
dev.off()

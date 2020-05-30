Elect <- read.table("~/R course/household_power_consumption.txt", 
                    header= T, sep = ";", stringsAsFactors = F, dec = "." )
sel_elect <- Elect[Elect$Date %in% c("1/2/2007","2/2/2007"), ]
sel_time <- strptime(paste(sel_elect$Date,sel_elect$Time, sep = " "),
                     format = "%d/%m/%Y %H:%M:%S")
GlAcPo <- as.numeric(sel_elect$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(sel_time,GlAcPo, type="l", ylab = "Global Active Power(kilowatss)", xlab = " ")
dev.off()

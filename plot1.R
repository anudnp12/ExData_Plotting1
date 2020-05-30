Elect <- read.table("~/R course/household_power_consumption.txt", 
                 header= T, sep = ";", stringsAsFactors = F, dec = "." )
sel_elect <- Elect[Elect$Date %in% c("1/2/2007","2/2/2007"), ]
GlAcPo <- as.numeric(sel_elect$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(GlAcPo, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()


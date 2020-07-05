setwd("D:/exdata_data_household_power_consumption")
data_all <- read.table("D:/exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";")
data_all$Date <- as.Date(data_all$Date, format = "%d/%m/%Y")
data = data_all[data_all$Date == "2007-02-01" | data_all$Date == "2007-02-02", ]
data$Date_Time <- paste(data$Date, " ", data$Time)
data$Date_Time <- strptime(data$Date_Time, format = "%Y-%m-%d %H:%M:%S")
data$Global_active_power <- as.numeric(as.character(data$Global_active_power))

png(file = "plot2.png", width=480, height=480)
with(data, plot(Date_Time, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab = ""))
dev.off()
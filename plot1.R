setwd("D:/exdata_data_household_power_consumption")
data_all <- read.table("D:/exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";")
data_all$Date <- as.Date(data_all$Date, format = "%d/%m/%Y")
data = data_all[data_all$Date == "2007-02-01" | data_all$Date == "2007-02-02", ]
data$Global_active_power <- as.numeric(as.character(data$Global_active_power))

png(file = "plot1.png", width=480, height=480)
hist(data$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
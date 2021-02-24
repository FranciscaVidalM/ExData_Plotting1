# Plot 1
file <- file("household_power_consumption.txt")
data <- read.table("household_power_consumption.txt", header = T,sep = ";", na.strings = "?")

#Convert dates
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")

# Generate plot
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

# Copy plot on Desktop in png
dev.copy(png, file="plot 1.png", height=480, width=480)

# Turn off graphic device
dev.off()







##plot2
#download data
data<-read.csv("~/Downloads/household_power_consumption.txt", sep=";")
str(data)
#subset data base on the Date
df <- subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")

#transform date into yyyy-mm-dd put date and time together
time <- strptime(paste(df$Date, df$Time, 
                       sep=" "), "%d/%m/%Y %H:%M:%S")
#transform factor into numeric
z<-as.numeric(df$Global_active_power)
#plot date~global active power
plot(time,z, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")


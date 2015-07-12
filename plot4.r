#plot4
#read the data
data<-read.csv("~/Downloads/household_power_consumption.txt", sep=";")
#subset data base on the Date
df <- subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")
#transform date into yyyy-mm-dd put date and time together
time <- strptime(paste(df$Date, df$Time, 
                       sep=" "), "%d/%m/%Y %H:%M:%S")

#combine all four graphs
par(mfrow=c(2,2))

#make graph 1
#transform factor into numeric
z<-as.numeric(levels(df$Global_active_power))[df$Global_active_power]
#plot date~global active power
plot(time,z, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")

#make graph2
#transform voltage into a numeric factor
voltage<-as.numeric(levels(df$Voltage))[df$Voltage]
#plot time~voltage
plot(time,voltage, type="l", xlab="datetime", 
     ylab="Voltage")

#make graph3
#put three plots all together in one plot
plot(time,submetering1, type="l", xlab="", 
     ylab="Energy sub metering",col="black")
points(time,submetering2, type="l", xlab="", 
       ylab="Energy sub metering",col="red")
points(time,submetering3, type="l", xlab="", 
       ylab="Energy sub metering",col="blue")
#add legend and edit the size to make it fit the graph
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,cex=0.05,lwd=3,col=c("black","red","blue"))

#make graph4
#transform global reactive power into numeric factor
grp<-as.numeric(levels(df$Global_reactive_power))[df$Global_reactive_power]
plot(time,grp, type="l", xlab="datetime", 
     ylab="Global_reactive_Power")


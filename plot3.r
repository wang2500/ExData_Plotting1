#plot3

par(mfrow=c(1,1))
#read the data
data<-read.csv("~/Downloads/household_power_consumption.txt", sep=";")
#subset data base on the Date
df <- subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")
#transform date into yyyy-mm-dd put date and time together
time <- strptime(paste(df$Date, df$Time, 
                       sep=" "), "%d/%m/%Y %H:%M:%S")
#transform all the factors into numeric variable
submetering1<-as.numeric(levels(df$Sub_metering_1))[df$Sub_metering_1]
submetering2<-as.numeric(levels(df$Sub_metering_2))[df$Sub_metering_2]
submetering3<-df$Sub_metering_3
#put three plots all together in one plot
plot(time,submetering1, type="l", xlab="", 
     ylab="Energy sub metering",col="black")
points(time,submetering2, type="l", xlab="", 
       ylab="Energy sub metering",col="red")
points(time,submetering3, type="l", xlab="", 
       ylab="Energy sub metering",col="blue")
#add legend and edit the size to make it fit the graph
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,cex=0.5,lwd=3,col=c("black","red","blue"))



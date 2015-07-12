#download data
data<-read.csv("~/Downloads/household_power_consumption.txt", sep=";")
str(data)
#subset data base on the Date
df <- subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")

##plot1
#transform factor into numeric
z<-as.numeric(levels(df$Global_active_power))[df$Global_active_power]
#plot date~global active power
plot(time,z, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")

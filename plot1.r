#download data
data<-read.csv("~/Downloads/household_power_consumption.txt", sep=";")
str(data)
#subset data base on the Date
df <- subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")

##plot1
#transform factor into numeric variable
gap<-df$Global_active_power
xx<-as.numeric(levels(gap))[gap]
#get the histogram of plot1
hist(xx,col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power",breaks=12)


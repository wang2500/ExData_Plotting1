data<-read.csv("~/Downloads/household_power_consumption.txt", sep=";")
str(data)
unique(data$Date)
#subset data base on the Date
df <- subset(data, data$Date=="1/2/2007"|data$Date=="2/2/2007")
View(df)
#transform date into yyyy-mm-dd
data$newdate <- strptime(as.character(data$Date), "%d/%m/%Y")
data$newdate
#put date and time together
x<-paste(data$newdate,data$Time)
x

##plot1
#transform factor into numeric variable
x<-df$Global_active_power
xx<-as.numeric(levels(x))[x]
#get the histogram of plot1
hist(xx,col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power",breaks=12)


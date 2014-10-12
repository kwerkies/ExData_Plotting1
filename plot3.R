png(filename="C:/Documents and Settings/Wei Jie Kwok/Desktop/R prog lessons - Data sets/Exploratory Data Analysis/ExData_Plotting1/plot3.png",width=480,height=480)
data <- read.csv("C:/Documents and Settings/Wei Jie Kwok/Desktop/R prog lessons - Data sets/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?", colClasses=c("Date"="Date"))
#Energy sub-metering line charts (3 data sets)
#Concatenate data from both days, for each data set
x1 <- data[data$Date == "1/2/2007",7]
x2 <- data[data$Date == "2/2/2007",7]
x <- cbind(x1[1:1440],x2[1:1440])
y1 <- data[data$Date == "1/2/2007",8]
y2 <- data[data$Date == "2/2/2007",8]
y <- cbind(y1[1:1440],y2[1:1440])
z1 <- data[data$Date == "1/2/2007",9]
z2 <- data[data$Date == "2/2/2007",9]
z <- cbind(z1[1:1440],z2[1:1440])
t <- seq(1:2880)
#Plot line charts
plot(t,x,type="l",col="black",xaxt="n",ylab="Energy sub metering",xlab="")
axis(side=2,at=seq(0,30,10),labels=seq(0,30,10))
axis(side=1,at=seq(0,2880,1440),labels=c("Thu","Fri","Sat"))
lines(t,y,col="red")
lines(t,z,col="blue")
legend("topright",lwd=1, cex=0.8,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
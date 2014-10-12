data <- read.csv("C:/Documents and Settings/Wei Jie Kwok/Desktop/R prog lessons - Data sets/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?", colClasses=c("Date"="Date"))
#Global Active Power line chart
#Concatenate data from both days
y1 <- data[data$Date == "1/2/2007",3]
y2 <- data[data$Date == "2/2/2007",3]
y <- cbind(y1[1:1440],y2[1:1440])
x <- seq(1:2880)
#Plot line chart
plot(x,y, type = "l",xlab="",ylab="Global Active Power (kilowatts)",xaxt="n",yaxt="n")
axis(side=2,at=seq(0,6,2),labels=seq(0,6,2))
axis(side=1,at=seq(0,2880,1440),labels=c("Thu","Fri","Sat"))
#Copy into png file
dev.copy(png, filename="C:/Documents and Settings/Wei Jie Kwok/Desktop/R prog lessons - Data sets/Exploratory Data Analysis/ExData_Plotting1/plot2.png",width=480,height=480)
dev.off()
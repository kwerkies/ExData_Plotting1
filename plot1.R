data <- read.csv("C:/Documents and Settings/Wei Jie Kwok/Desktop/R prog lessons - Data sets/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?", colClasses=c("Date"="Date"))
#Global Active Power histogram
#Concatenate data from both days
x1 <- data[data$Date == "1/2/2007",3]
x2 <- data[data$Date == "2/2/2007",3]
x <- rbind(x1[1:1440],x2[1:1440])
#Create histogram
hist(x,col="red", xlab = "Global Active Power (kilowatts)", main="Global Active Power", xaxt="n",yaxt="n")
axis(side=2,at=seq(0,1200,200),labels=seq(0,1200,200))
axis(side=1,at=seq(0,6,2),labels=seq(0,6,2))
#Copy into png file
dev.copy(png, filename="C:/Documents and Settings/Wei Jie Kwok/Desktop/R prog lessons - Data sets/Exploratory Data Analysis/ExData_Plotting1/plot1.png",width=480,height=480)
dev.off()
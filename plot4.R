png(filename="C:/Documents and Settings/Wei Jie Kwok/Desktop/R prog lessons - Data sets/Exploratory Data Analysis/ExData_Plotting1/plot4.png",width=480,height=480)
data <- read.csv("C:/Documents and Settings/Wei Jie Kwok/Desktop/R prog lessons - Data sets/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?", colClasses=c("Date"="Date"))
t <- seq(1:2880)
#Global Active Power data
GAPa <- data[data$Date == "1/2/2007",3]
GAPb <- data[data$Date == "2/2/2007",3]
GAP <- cbind(GAPa[1:1440],GAPb[1:1440])
#VOltage data
volta <- data[data$Date == "1/2/2007",5]
voltb <- data[data$Date == "2/2/2007",5]
volt <- cbind(volta[1:1440],voltb[1:1440])
#Energy sub-metering data
submeter1a <- data[data$Date == "1/2/2007",7]
submeter1b <- data[data$Date == "2/2/2007",7]
submeter1 <- cbind(submeter1a[1:1440],submeter1b[1:1440])
submeter2a <- data[data$Date == "1/2/2007",8]
submeter2b <- data[data$Date == "2/2/2007",8]
submeter2 <- cbind(submeter2a[1:1440],submeter2b[1:1440])
submeter3a <- data[data$Date == "1/2/2007",9]
submeter3b <- data[data$Date == "2/2/2007",9]
submeter3 <- cbind(submeter3a[1:1440],submeter3b[1:1440])
#GLobal Reactive Power data
GRPa <- data[data$Date == "1/2/2007",4]
GRPb <- data[data$Date == "2/2/2007",4]
GRP <- cbind(GRPa[1:1440],GRPb[1:1440])
#Start plots
par(mfrow = c(2,2))
#Plot GAP
plot(t,GAP, type = "l",xlab="",ylab="Global Active Power",xaxt="n",yaxt="n")
axis(side=2,at=seq(0,6,2),labels=seq(0,6,2))
axis(side=1,at=seq(0,2880,1440),labels=c("Thu","Fri","Sat"))
#Plot Voltage
plot(t,volt, type = "l",xlab="datetime",ylab="Voltage",xaxt="n",yaxt="n")
axis(side=2,at=c(234,236,238,240,242,244,246),labels=c(234,"",238,"",242,"",246))
axis(side=1,at=seq(0,2880,1440),labels=c("Thu","Fri","Sat"))
#Plot ESM
plot(t,submeter1,type="l",col="black",xaxt="n",ylab="Energy sub metering",xlab="")
axis(side=2,at=seq(0,30,10),labels=seq(0,30,10))
axis(side=1,at=seq(0,2880,1440),labels=c("Thu","Fri","Sat"))
lines(t,submeter2,col="red")
lines(t,submeter3,col="blue")
legend("topright",inset=c(0.01,0.01),lwd=1, cex=0.8,box.col="white",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#Plot GRP
plot(t,GRP, type = "l",xlab="datetime",ylab="Global_reactive_power",xaxt="n",yaxt="n")
axis(side=2,at=seq(0,0.5,0.1),labels=seq(0,0.5,0.1))
axis(side=1,at=seq(0,2880,1440),labels=c("Thu","Fri","Sat"))
dev.off()
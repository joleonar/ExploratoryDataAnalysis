#PLOT No. 4
par(mfrow=c(2,2))
par(mar=c(4,4,1,1))
load("power_sub.Rda")
X <-power_sub$datetime
Y <- as.numeric(as.vector(power_sub$Global_active_power))
plot(X,Y,type="n",xlab="",ylab="Global Active Power (kilowatts)",cex.lab=0.7) 
lines(X,Y)

V <- as.numeric(as.character(power_sub$Voltage))
plot(X,V,type="n",xlab="datetime",ylab="Voltage") 
lines(X,V)

#op <- par(cex=.5)
SM1 <- as.numeric(as.character(power_sub$Sub_metering_1))
SM2 <- as.numeric(as.character(power_sub$Sub_metering_2))
SM3 <- as.numeric(as.character(power_sub$Sub_metering_3))
plot(X,SM1,type="n",xlab="",ylab="Energy Sub metering")
lines(X,SM1)
lines(X,SM2,col="red")
lines(X,SM3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),
       col=c("black","red","blue"),cex=0.7)
#par(op)


RP <- as.numeric(as.character(power_sub$Global_reactive_power))
plot(X,RP,type="n",xlab="datetime",ylab="Global reactive power") 
lines(X,RP)

dev.copy(png,file="Plot4.png",width=480,height=480)
dev.off()
load("power_sub.Rda")

X <-power_sub$datetime
par(mar=c(2,4,2,1))
SM1 <- as.numeric(as.character(power_sub$Sub_metering_1))
SM2 <- as.numeric(as.character(power_sub$Sub_metering_2))
SM3 <- as.numeric(as.character(power_sub$Sub_metering_3))
plot(X,SM1,type="n",xlab="",ylab="Energy Sub metering",cex.lab=0.8)
lines(X,SM1)
lines(X,SM2,col="red")
lines(X,SM3,col="blue")
tx="2007-02-02 08:00:00.00"
tx2 <- strptime(tx,format="%Y-%m-%d %H:%M:%S")
legend(tx2,40,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),
       col=c("black","red","blue"),cex=0.8)

dev.copy(png,file="Plot3.png",width=480,height=480)
dev.off()

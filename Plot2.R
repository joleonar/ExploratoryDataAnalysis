load("power_sub.Rda")

#PLOT No. 2
X <-power_sub$datetime
Y <- as.numeric(as.vector(power_sub$Global_active_power))

plot(X,Y,type="n",xlab="",ylab="Global Active Power (kilowatts)",cex.lab=0.7) 
lines(X,Y)

dev.copy(png,file="Plot2.png",width=480,height=480)
dev.off()
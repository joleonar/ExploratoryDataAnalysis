#PLOT 1

#PLOT No. 1
Active_p <- as.vector(power_sub$Global_active_power)
Active_p <- as.numeric(Active_p)
hist(Active_p,breaks=seq(0,10,0.5),col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power")

dev.copy(png,file="Plot1.png",width=480,height=480)
dev.off()
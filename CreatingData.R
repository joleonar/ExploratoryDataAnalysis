#Read Data Power_Consumption

power_c <- read.table("household_power_consumption.txt",header=T,sep=";")
power_c$Date <- as.Date(power_c$Date,"%d/%m/%Y")

#Period of time to be considered
T1  <- as.Date("01/02/2007","%d/%m/%Y")
T2  <- as.Date("02/02/2007","%d/%m/%Y")

#Subsetting the data for plotting
power_sub <- subset(power_c,Date>=T1 & Date <= T2)
DateTime <- as.character(power_sub$Date)
power_sub$datetime <-strptime(paste(DateTime,power_sub$Time,sep=" "),format="%Y-%m-%d %H:%M:%S")
save(power_sub, file="power_sub.Rda")
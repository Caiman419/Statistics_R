# 1
#그래프, 분포

# 2
DF_mobile_battery=read.csv(file="mobile_battery.csv")
str(DF_mobile_battery)

# 3-1
attach(DF_mobile_battery)

table(Gender)
# 3-2
table(Brand)

# 4
table(Gender,Brand)

# 5
barplot(table(Gender,Brand),legend=T)

chart=barplot(table(Gender,Brand),beside=T,ylim=c(0,10),legend=T)
text(x=chart,y=table(Gender,Brand)+0.5,labels=table(Gender,Brand))

# 6
pie(table(Color),labels=paste(names(table(Color)),table(Color)))

pct=round(table(Color)/sum(table(Color))*100,2)
pie(table(Color),labels=paste(names(table(Color)),pct,"%"))

detach(DF_mobile_battery)

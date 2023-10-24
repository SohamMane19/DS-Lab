#1
mydf=read.csv("D:\\DS\\docs\\exp1_pollutant.csv")
temdf=subset(mydf,Month==6)
print(temdf)
mean(temdf$Temp)
nrow(mydf)
tail(mydf,2)   
mydf$Ozone[47]
sum(is.na(mydf$Ozone))
mean(mydf$Ozone, na.rm = TRUE)
s=subset(mydf,Ozone>31 & Temp>90)
s
mean(s$Solar.R)
p=subset(mydf,Month==5)
max(p$Ozone)


#2
mydf=read.csv("D:\\DS\\docs\\exp1_hair_eye.csv")
sum(mydf$Eye.Color=="Brown")
sum(mydf$Hair.Color=="Blonde")
sum(mydf$Hair.Color=="Brown" & mydf$Eye.Color=="Black")
green=sum(mydf$Eye.Color=="Green")
color=length(mydf$Eye.Color)
percentage=(green/color)*100
print(percentage)
rb=sum(mydf$Hair.Color=="Red" & mydf$Eye.Color=="Blue")
row_no=nrow(mydf)
perc=(rb/row_no)*100
print(perc)

library(tidyverse)
library(dslabs)
murderdf=murders
library(ggrepel)

#3
mydf=read.csv("D:\\DS\\docs\\exp1_germination.csv")
mean(subset(mydf,Box=='Uncovered' & water_amt==4)$germinated)
median(subset(mydf,Box=='Covered')$germinated)

#4-2
rate_cal=summarize(murderdf,rate=sum(total)/sum(population)*10^6)
r=pull(rate_cal)
ggplot(murderdf,aes(x=population/10^6,y=total,label=abb))+
  geom_abline(intercept = log10(r), Ity=2,col="darkgrey")+
  geom_point(aes(color=region),size=3)+
  geom_text_repel(nudge_x = 0.005)+
  scale_x_log10("Population in Millions")+
  scale_y_log10(" Total Murders")+
  ggtitle("US State Crimes")+
  scale_color_discrete(name="Region")

#4-1
library(ggplot2)
box=ggplot(data=iris,aes(x=Species,y=Sepal.Length))
box+geom_boxplot(aes(fill=Species))
ggtitle("Box Plot")
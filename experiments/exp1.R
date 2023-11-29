#Q1)-Case Study: Consider the “pollutant” data set.
mydf=read.csv("D:\\DS\\docs\\exp1_pollutant.csv")
#1. What is the mean of “Temp” when “Month” is equal to 6?
temdf=subset(mydf,Month==6)
print(temdf)
mean(temdf$Temp)
#2. How many observations are there in the given data?
nrow(mydf)
#3.	Print last two rows of the data.
tail(mydf,2) 
#4.	What is the value of Ozone in 47th row?
mydf$Ozone[47]
#5.	How many values are missing in Ozone column?
sum(is.na(mydf$Ozone))
#6.	What is the mean of Ozone column excluding missing values?
mean(mydf$Ozone, na.rm = TRUE)
#7.	Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90.   What is the mean of Solar.R in this subset?
s=subset(mydf,Ozone>31 & Temp>90)
s
mean(s$Solar.R)
#8.	What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
p=subset(mydf,Month==5)
max(p$Ozone)


#Q2-Case Study: Hair Eye color Data set
mydf=read.csv("D:\\DS\\docs\\exp1_hair_eye.csv")
#1.	How many people have brown eye color?
sum(mydf$Eye.Color=="Brown")
#2.	How many people have Blonde hair?
sum(mydf$Hair.Color=="Blonde")
#3.	How many Brown haired people have Black eyes?
sum(mydf$Hair.Color=="Brown" & mydf$Eye.Color=="Black")
#4.	What is the percentage of people with Green eyes?
green=sum(mydf$Eye.Color=="Green")
color=length(mydf$Eye.Color)
percentage=(green/color)*100
print(percentage)
#5.	What percentage of people have red hair and Blue eyes?
rb=sum(mydf$Hair.Color=="Red" & mydf$Eye.Color=="Blue")
row_no=nrow(mydf)
perc=(rb/row_no)*100
print(perc)

library(tidyverse)
library(dslabs)
murderdf=murders
library(ggrepel)

#Q3-Case study: Germination Data Set
mydf=read.csv("D:\\DS\\docs\\exp1_germination.csv")

#1.	What is the average number of seeds germinated for the uncovered boxes with level of watering equal to 4?
mean(subset(mydf,Box=='Uncovered' & water_amt==4)$germinated)

#2.	What is the median value for the data covered boxes?
median(subset(mydf,Box=='Covered')$germinated)


#Q4-
library(dslabs)

#i.	To display the Boxplot for sepal length of iris data set as shown below
library(ggplot2)
box=ggplot(data=iris,aes(x=Species,y=Sepal.Length))
box+geom_boxplot(aes(fill=Species))#aes-aesthetics-To create a boxplot where the boxes are filled based on different levels of the "Species" variable
  ggtitle("Box Plot")

#ii.	To display the Scatter plot for murders data set present in “dslabs” package as shown below.Give proper title, x,y axis label etc. to each plot.
p1=ggplot(murders,aes(population/10^6,total,label=abb))+geom_point(aes(col=region))+scale_x_log10()+scale_y_log10()+geom_text(size=3,nudge_x=0.07)+labs(x="POPULATION",y="TOTAL", title="SCATTERPLOT")
print(p1)


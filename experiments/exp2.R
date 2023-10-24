#1
df=read.csv("D:\\DS\\docs\\exp2_travellers.csv")
p=sum(df$Travelledabroad=="Y")/nrow(df)

#2
d1=dbinom(0,10,p)
d1

#3
d2=dbinom(1,10,p)
d2

#4
d3<-dbinom(2,10,p)
d3

#5
d4<-dbinom(3,10,p)
print(d4)

#6
d5<-dbinom(4,10,p)
print(d5)

#7
d6<-dbinom(5,10,p)
print(d6)

#8
d7<-dbinom(6,10,p)
print(d7)

#9
d8<-dbinom(7,10,p)
print(d8)

#10
d9<-dbinom(8,10,p)
print(d9)

#11
d10<-dbinom(9,10,p)
print(d10)

#12
#all 10 persons
d11<-dbinom(10,10,p)
print(d11)

#Q3
barplot(c(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10))

#Q4	What is the probability that in the randomly chosen sample of 100 persons at least 59 have travelled abroad?
n<-100
mean=n*p
q<-1-p
sd<-sqrt(n*p*q)
t<-pnorm(59,mean,sd,lower.tail = F)
print(pbinom(59,100,p,lower.tail = F))

# name <- "Soham"
# print(name)
# age <- 18
# print(age)

# paste("name: ",name," age: ",age)
# print(age+1)

# num1 <- num2  <- num3 <- 1
# print(num1)
# print(num2)
# print(num3)


# # numeric - (10.5, 55, 787)
# # integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
# # complex - (9 + 3i, where "i" is the imaginary part)
# # character (a.k.a. string) - ("k", "R is exciting", "FALSE", "11.5")
# # logical (a.k.a. boolean) - (TRUE or FALSE)

# x <- 10L
# y <- 3.19
# z <- 9+3i
# a <- "solid"
# b <- TRUE

# print(x)
# print(y)
# print(z)
# print(a)
# print(b)

# print(class(x))
# print(class(y))
# print(class(z))
# print(class(a))
# print(class(b))

# #typecasting
# print(as.integer(y))

# print(as.integer(b))

# print(min(1,4,2))	
# print(max(1,4,2))

# print(sqrt(16))

# print(abs(-1.4))

# #ceil and floor

# print(ceiling(y))
# print(floor(y))

# str <- "soham is a coder,
# he plays football\n"
# cat(str)

# print(nchar(str))
# print(grepl("coder",str))

# paste(str,"he likes python")

# #escape character 
# str2 <- "Hello my name is \"mark\",from the north.\n"
# str2
# cat(str2)

# print(age>x)
# print(age==x)
# print(age<x)

# #operators
# print(2+3)
# print(3-2)
# print(3*2)
# print(3/2)	
# print(3^2)
# print(4%%2)
# print(13%/%2)


p <- 32
q <- 23
r <- 12

if(p>q)
{
	if(p>r)
	{
		paste(p," is greatest")
	}else
	{
		paste(r," is greatest")	
	}
}else
{
	if(q>r)
	{
		print(q," is greatest")
	}else
	{
		print(r," is greatest")
	}
}

number <- 12
if(number %% 2==0 & number>0)
{
	paste(number,"is even and positive")
}

# i<-1
# while(i<6)
# {
# 	if(i==4)
# 	{
# 		next;
# 	}
# 	print(i)
# 	i<-i+1
# }

for(x in 1:10)
{
	print(x)
}

fruits<-list("apple","banana","cherry")
for(x in fruits)
{
	print(x	)
}

dice<-1:6
for(x in dice)
{
	print(x)
}
myfunc<-function(fname)
{
 	paste("Hello ",fname)
}
myfunc("Soham")
myfunc("Alex")
myfunc("Mark")

add<-function(a=0,b=0)
{
	print(a+b)
}
add(12)
add(12,2)

cars<-c("bmw","lambo","ferrari")
print(cars)
print(class(cars))

students<-list('abc',12.3,2L)
print(students)
print(class(students))
print(class(students[2]))

print(matrix(1:8,nrow=4,ncol=4,byrow=TRUE))

a<-array(c('green','yellow'))
print(a)

#df
pinfo<-data.frame(
  rollno=c(1,2,3),
  gender=c('m','f','m'),
  height=c(213,314,145)
)
print(pinfo)
print(summary(pinfo))
setwd("~/R-files/practice/")
words<-read.csv("french_words.csv")
dim(words)
nrow(words)
str(words)

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))
print(music_genre)

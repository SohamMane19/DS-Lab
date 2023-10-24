m1=matrix(c(1,2,3,4),nrow=2,ncol=2)
m2=matrix(c("a","b","c","d"),nrow=2,ncol=2)
# num1
# print(m2[1])
print(m2[c(1,2),])

#adding
m3=cbind(m1,c(5,6))
m3

#adding rows
m4=rbind(m1,c(7,8))
dim(m4)

for(row in 1:nrow(m1))
{
	for(col in 1:ncol(m1))
	{
		print(m1[row,col])
	}
}
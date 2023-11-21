# Numerical 1: Ball Bearings

# Null Hypothesis: The mean life time is equal to 10000 hours
# Alternative Hypothesis: The mean life time is not equal to 10000 hours
# H0:?=10000
# HA:????10000

# Read Excel File
df <- read.csv("Expt 3- Dataset_Hypothesis_csv.csv")

# Given: Population Mean, Sample Size 
mu = 10000
n = 50

# Calculate Sample Mean, Sample Standard Deviation from csv file 
x_bar = mean(df$Life_Hrs)
print(x_bar)
s = sd(df$Life_Hrs)
print(s)

# Calculate Z value  
z_star <- (x_bar-mu)/(s/sqrt(n))
print(z_star)

# Calculate Z Critical value
qnorm(p=.05/2, lower.tail=FALSE)
-qnorm(p=.05/2, lower.tail=FALSE)

# Conclusion
# Since calculated value of Z is beyond the z critical values, we reject the null hypothesis. 
# There is not enough evidence to suggest that the 
# mean life time is equal to 10000 hours

# Calculate P value 
pvalue <- round(2*pnorm(-abs(z_star)), digits = 4)
print(paste0("The p-value is ", pvalue))

# Since p=0<a=0.05, we reject the null hypothesis. 
# There is not enough evidence to suggest that the 
# mean life time is equal to 10000 hours

# Numerical 2: Potato Chips
# Null Hypothesis: The mean amount of calories in a potato chip bag is equal to the nutrition label value of 130
# Alternative Hypothesis: The mean amount of calories in a potato chip bag is not equal to the nutrition label value of 130
# H0:?=130
# HA:????130

# Population Mean, Sample Size, Sample Mean, Standard Deviation, Significance Level  
popmean = 130
n = 35
sampmean = 134
stddev = 17
alpha = 0.05

# Calculate Z value at 
zscore <- round((sampmean-popmean)/(stddev/sqrt(n)),digits=2)
print(paste0("The z-score is ", zscore))

# Calculate Z critical value at
qnorm(p=.05/2, lower.tail=FALSE)
-qnorm(p=.05/2, lower.tail=FALSE)

# Conclusion
# Since calculated value of Z is within the z critical values, 
# we fail to reject the null hypothesis. 
# There is not enough evidence to suggest that the 
# nutrition label on potato chip bags does not provide an accurate measure 
# of calories.

# Calculate P value
pvalue <- round(2*pnorm(-abs(zscore)), digits = 4)
print(paste0("The p-value is ", pvalue))

# Since p=0.1645>a=0.05, we fail to reject the null hypothesis. 
# There is not enough evidence to suggest that the 
# nutrition label on potato chip bags does not provide an accurate measure 
# of calories.

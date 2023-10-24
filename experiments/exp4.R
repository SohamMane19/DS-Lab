df=r
mymodel=lm(formula = df$Unitsales~df$Price,df)
mymodelead.csv("D:\\DS-lab\\docs\\exp4_toysales.csv")
#factor()

Nominal-- No order

Ordinal--Order

#Nominalfunction
animal<-c('d','c','d','c','c')

id<-c(1,2,3,4,5)
print(factor(animal))

#ordinalFunction
temps<-c('hot','med','hot','hot','cold','cold','med')

temperature.fact<-factor(temps,ordered=T,levels=c('cold','med','hot'))

print(temperature.fact)

print(summary(temperature.fact))

print(summary(temps))



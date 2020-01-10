print(sample(x=1:10,10))

#apply
v<-c(1,2,3,4,5)
addran<-function(x){
  ran<-sample(1:100,1)
  return(x+ran)
}
print(addran(10))

result<-sapply(v, addran)
print(result)


#alternative
v<-c(3,2,1)
prod<-function(num){
  x<-num*2
  return(x)
}
result<-lapply(v,prod)
print(result)

#anonymous function
result<-sapply(v, function(num){num*2})
print(result)

#apply for multiple inputs
add_choice<-function(num,choice){
  return(num+choice)
}
print(add_choice(1,2))
print(sapply(v, add_choice,choice=100))


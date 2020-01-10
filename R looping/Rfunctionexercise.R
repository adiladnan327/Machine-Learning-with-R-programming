#question 1
prod<-function(num1,num2){
  result1<-num1*num2
  return(result1)
}
result<-prod(3,4)
print(result)

#question 2
num_check<-function(num,v){
  for (ele in v){
    if (ele==num)
    {
      return(TRUE)
    }
  }
  return(FALSE)
}
num_check(2,c(1,2,3))


#question 3
num_count<-function(num,v){
  count<-0
  for (ele in v) {
    if(ele==num){
      count <- count+1
    }
  }
  return(count)
}
print(num_count(2,c(1,1,2,2,3)))


#question 4
bar_count<-function(pack){
  amount_of_1<-pack%%5
  amount_of_5<-(pack-amount_of_1)/5
  return(amount_of_1+amount_of_5)
}
bar_count(100)

#question 5


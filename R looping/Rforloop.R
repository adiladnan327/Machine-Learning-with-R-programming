v<- c(1,2,3,4,5,6)

for (temp.var in v){
  if(temp.var>=3){
  print(variable)
  }
}

for (temp.var in v){
  #execute some code
  # for every temp.var in v
  print('Hello World')
}

V<-list(c(1,2,3,4,5,6))
for (temp.var in v){
  result<-temp.var+1
  print('The temp.var plus 1 is equal to:')
  print(result)
}

my.list<-list(c(1,2,3),mtcars,12)

for (item in my.list){
  print(item)
}

mat<-matrix(1:25,nrow = 5)

for (row in 1:nrow(mat)){
  for (col in 1:ncol(mat)){
  print(paste('the selected at row is:',row))
  print(paste('The element at row:',row,'and col:',col, 'is',mat[row,col]))
  }
}





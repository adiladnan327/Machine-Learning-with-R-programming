#question 1
A<-matrix(1:3)
B<-matrix(4:6)
print(c<-cbind(A,B))

#question 2
mat<-matrix(1:9,byrow = T,nrow = 3)
print(mat)

#question 3
matrix(mat)


#question 4
mat2<-matrix(1:25,byrow = T,nrow = 5)
mat2

#question 5
mat2[2:3,2:3]

#question 6
mat2[4:5,4:5]

#question 7
sum(mat2)

#question 8
help(runif)
mat3<-matrix(runif(20, min = 1, max = 20),byrow = T,nrow = 4)
print(mat3)




rm(list = ls())


#Question-2 Part A
p <- t(matrix(c( 1/3, 2/3,   0,   0,  0,   0,   0,   0,
                1/3, 1/3, 1/3,   0,  0,   0,   0,   0,
                0, 1/3, 1/3, 1/3,  0,   0,   0,   0,
                0,   0, 1/3, 1/3, 1/3,  0,   0,   0,
                0,   0,   0, 1/3, 1/3, 1/3,  0,   0,
                0,   0,   0,   0, 1/3, 1/3, 1/3,  0,
                0,   0,   0,   0,   0, 1/3, 1/3, 1/3,
                0,   0,   0,   0,   0,   0, 2/3, 1/3), nrow=8, ncol=8))


finalStateMatrix <- matrix(NA,ncol = 5,nrow = 50)

for(i in 1:5) {
    tmpStates = c(1)
    for(k in 2:50) {
      tmpStates = c(tmpStates,which(rmultinom(1,1,p[tmpStates[k-1],]) == 1))
    }
    print(tmpStates)
    finalStateMatrix[,i] <- tmpStates  
}
for(i in 1:50) {
  for(j in 1:5) {
    finalStateMatrix[i,j] <- finalStateMatrix[i,j] -1
  }
}
matplot(finalStateMatrix, type='l', lty=1, col=1:5, ylim=c(0,7), ylab='state', xlab='time')
abline(h=0, lty=3)
abline(h=7, lty=3)

#Question-2 Part B
transitionMatrix = diag(8)
pi <- matrix(c(1,0,0,0,0,0,0,0),nrow=1,ncol=8)

i <- 1
while(i <= 50) {
  pi <- pi %*% p
  transitionMatrix <- transitionMatrix %*% p
  
  if(i == 10) {
    print("P == 10")
    print(transitionMatrix)
  }
  if(i == 20) {
    print("P == 20")
    print(transitionMatrix)
  }
  if(i == 50) {
    print("P == 50")
    print(transitionMatrix)
  }
  i <- i+1
}
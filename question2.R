rm(list = ls())
set.seed(12345)
p <- (matrix(c( 1/3, 2/3,   0,   0,  0,   0,   0,   0,
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
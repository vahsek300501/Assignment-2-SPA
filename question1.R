rm(list = ls())
set.seed(12345)

input_list <- c(10,50,100,500)

#Question-1 Part A
ten_trials <- rnbinom(n = 100,size = input_list[1],p = 0.2)
fifty_trials <- rnbinom(n = 100,size = input_list[2],p = 0.2)
hundred_trials <- rnbinom(n = 100,size = input_list[3],p = 0.2)
five_hundred_trials <- rnbinom(n = 100,size = input_list[4],p = 0.2)

#Question-1 Part A Scatter Plots
plot(ten_trials,main = "Scatter plot of size = 10", xlab = "number of observations", ylab = "Sum of inter-arrivals time")
plot(fifty_trials,main = "Scatter plot of size = 50", xlab = "number of observations", ylab = "Sum of inter-arrivals time")
plot(hundred_trials,main = "Scatter plot of size = 100", xlab = "number of observations", ylab = "Sum of inter-arrivals time")
plot(five_hundred_trials,main = "Scatter plot of size = 500", xlab = "number of observations", ylab = "Sum of inter-arrivals time")

#Question-1 Part A Histograms
hist(ten_trials,main = "histogram of size = 10", xlab = "sum of inter-arrival time", ylab = "frequency", col = "blue")
hist(fifty_trials,main = "histogram of size = 50", xlab = "sum of inter-arrival time", ylab = "frequency", col = "darkgreen")
hist(hundred_trials,main = "histogram of size = 100", xlab = "sum of inter-arrival time", ylab = "frequency", col = "purple")
hist(five_hundred_trials,main = "histogram of size = 500", xlab = "sum of inter-arrival time", ylab = "frequency", col = "red")

#Question-1 Part B
ten_trials_binom <- rbinom(n = 100,size = input_list[1],p = 0.2)
fifty_trials_binom <- rbinom(n = 100,size = input_list[2],p = 0.2)
hundred_trials_binom <- rbinom(n = 100,size = input_list[3],p = 0.2)
five_hundred_trials_binom <- rbinom(n = 100,size = input_list[4],p = 0.2)

#Question-1 Part B Scatter Plots
plot(ten_trials_binom,main = "Scatter plot of size = 10", xlab = "number of observations", ylab = "number of arrivals")
plot(fifty_trials_binom,main = "Scatter plot of size = 50", xlab = "number of observations", ylab = "number of arrivals")
plot(hundred_trials_binom,main = "Scatter plot of size = 100", xlab = "number of observations", ylab = "number of arrivals")
plot(five_hundred_trials_binom,main = "Scatter plot of size = 500", xlab = "number of observations", ylab = "number of arrivals")

#Question-1 Part B Histograms
hist(ten_trials_binom,main = "histogram of size = 10", xlab = "number of arrivals", ylab = "frequency", col = "blue")
hist(fifty_trials_binom,main = "histogram of size = 50", xlab = "number of arrivals", ylab = "frequency", col = "darkgreen")
hist(hundred_trials_binom,main = "histogram of size = 100", xlab = "number of arrivals", ylab = "frequency", col = "purple")
hist(five_hundred_trials_binom,main = "histogram of size = 500", xlab = "number of arrivals", ylab = "frequency", col = "red")
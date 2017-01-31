# Linear Regression

library(MASS)
library(ISLR)

l = lm(medv ~ lstat, Boston)
summary(l)
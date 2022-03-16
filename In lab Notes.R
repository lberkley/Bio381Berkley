######################################
# BIO 381 tutorial: data sims        #
# 16 Mar 2022                        #
######################################

# Why simulate data?
# Saves time: write parts of code before you have data
# Acts as a baseline for comparisons: check assumptions in your data
# Test new stats techniques

# Part 1: Normally-distributed data --------------------------
# Start with groups of data
# for t-tests or ANOVA

# Simulate groups with 20 observations
group1 <- rnorm(n = 20,mean = 2,sd = 1)
hist(group1)

# Change some parameters
group2 <- rnorm(n=20,mean=5,sd=1)
group3 <- rnorm(n=20,mean=2,sd=3)

hist(group2)
hist(group3)

# Simulate data for a linear regression
# Two continuous normal variables
# Start simple: assume an intercept of 0
# Call the slope beta1
# x is the predictor variable

# start with constant slope
beta1 <- 1

# our predictor variable is normally distributed
x <- rnorm(n=20)

# linear model:
y <- beta1*x

# you can play with different slopes
beta1 <- 1.5
y <- beta1*x

# you can also add an intercept:
beta0 <- 2
y <- beta0 + beta1*x

# adding covariates
# you can draw your covariate from a different distribution

# Part 2: abundance/count data ---------------------
# Option 1: data are normal-ish
# use round() to remove decimals
abund1 <- round(rnorm(n=20,mean=50,sd=10))
hist(abund1)

# Option 2: Poisson distribution
abund2 <- rpois(n=20,lambda=3)
barplot(table(abund2))

# Sometimes the environment affects counts
# To account for that, first create our lambdas
# Then use lambdas to get counts

# Use a regression to get intial values
pre.lambda <- beta0 + beta1*x
# inverse log to make lambdas positive
lambda <- exp(pre.lambda)

# Use created lambdas to get counts
abund3 <- rpois(n=20,lambda=lambda)
hist(abund3)

# Part 3: Occupancy, presence/absence data ------------
# Option 1: getting probs from a beta distribution
probs <- rbeta(n=20,shape=1,shape2=1)
occ1 <- rbinom(n=20,size=1,prob=probs)
print(occ1)

# Option 2: occupancy with a covariate
# similar to above, except we're generating probs,
#not lambdas

pre.probs <- beta0 + beta1*x
print(pre.probs)

# Convert to 0-1 scale
psi <- inv.logit(pre.probs)

# Create new occupancy values:
occ2 <- rbinom(n=20,size=1,prob=psi)
print(occ2)

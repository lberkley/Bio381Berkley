#####################################
# FUNCTION: sim_deer_data
# purpose: create fake cervid data
# input: csv file with path name
# output: data frame
# ----------------------------------

library(boot)

sim_deer_data <- function(size=500,mean=0.25,sd=0.50) {
  
    d_frame <- data.frame(VT=inv.logit(rnorm(n=size,mean=mean,sd=sd)),
                          NH=inv.logit(rnorm(n=size,mean=mean,sd=sd)),
                          ME=inv.logit(rnorm(n=size,mean=mean,sd=sd)))
    
  return(d_frame)
}

sim_deer_data()


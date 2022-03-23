#####################################
# FUNCTION: calculate_deer_stuff
# purpose: fit a OLS regression model
# input: x and y numeric vectors of the same length
# output: entire model summary from lm
# ----------------------------------

calculate_deer_stuff <- function(d_frame=Deer_Data) {
  names(d_frame) <- c("x_var","y_var")

  DeerANOVA <- aov(y_var ~ x_var, data=d_frame)
  
  return(summary(DeerANOVA))
}



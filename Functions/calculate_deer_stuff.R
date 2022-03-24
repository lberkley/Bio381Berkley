#####################################
# FUNCTION: calculate_deer_stuff
# purpose: run an ANOVA
# input: data frame
# output: ANOVA stats
# ----------------------------------

calculate_deer_stuff <- function(d_frame=Deer_Data) {
  names(d_frame) <- c("x_var","y_var")

  DeerANOVA <- aov(y_var ~ x_var, data=d_frame)
  
  return(summary(DeerANOVA))
}



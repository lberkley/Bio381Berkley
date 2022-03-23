#####################################
# FUNCTION: graph_deer_results
# purpose: graph data and fitted OLS line
# input: x and y numeric vectors of same length
# output: create ggplot graph
# ----------------------------------
library(tidyverse)
library(ggplot2)

graph_deer_results <- function(x_var=runif(10),
                          y_var=runif(10)) {
  d_frame <- data.frame(x_var,y_var)
  
  reg_plot <- ggplot(data=d_frame) +
    aes(x=x_var,y=y_var) +
    geom_point()
  stat_smooth(method=lm,se=0.95)
  print(reg_plot)
  message("regression data plotted")
}
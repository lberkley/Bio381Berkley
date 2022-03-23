#####################################
# FUNCTION: graph_deer_results
# purpose: graph data and fitted OLS line
# input: x and y numeric vectors of same length
# output: create ggplot graph
# ----------------------------------
library(tidyverse)
library(ggplot2)

graph_deer_results <- function(data=Deer_Data) {
  
  bar_plot <- ggplot(data=data) +
    aes(x=State,y=InfectionRate) +
    geom_boxplot()
  print(bar_plot)
  message("regression data plotted")
}

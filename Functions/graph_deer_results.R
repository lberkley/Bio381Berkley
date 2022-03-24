#####################################
# FUNCTION: graph_deer_results
# purpose: graph data
# input: data frame, identify the x and y variables
# output: create boxplot
# ----------------------------------
library(tidyverse)
library(ggplot2)

graph_deer_results <- function(data=Deer_Data) {
  
  bar_plot <- ggplot(data=data) +
    aes(x=State,y=InfectionRate) +
    geom_boxplot()
  print(bar_plot)
  message("data plotted")
}

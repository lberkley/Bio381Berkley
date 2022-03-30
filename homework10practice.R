# Nested for loop -------------
# Create a sample matrix

mat <- matrix(sample(1:10,size=9),
              nrow = 3,
              ncol = 3)
print(mat)

# Writing the for loop
for(i in 1:nrow(mat)){
  for(j in 1:ncol(mat)){
    print(mat[i,j])
  }
}


# Part 2
# Custom functions in for loops

# Simulating temp data

site1 <- runif(min=60,max=70,n=10)
site2 <- runif(min=60,max=70,n=10)
site3 <- runif(min=40,max=50,n=10)

# Put them in a data frame

temps.df <- cbind(site1, site2, site3)
print(temps.df)

# Let's write a custom functions that converts F to C
degf.to.degc <- function(x){
  degc <- (x-32)*(5/9)
  
  return(degc)
}

# Repeat a function using a for loop
for(i in 1:ncol(temps.df)){
  print(degf.to.degc(x=temps.df[,i]))
}


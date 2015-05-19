#This script still needs to be edited by my collaborators

########
#If Statement
#######
y=3
z=4
x = 0.1
if( x < 0.2)
{
  x <- x + 1
  cat("increment that number!\n")
}

x

#######
#If/Else statements
#######
x = 2.0
if ( x < 0.2)
{
  x <- x + 1
  cat("increment that number!\n")
} else
{
  x <- x - 1
  cat("nah, make it smaller.\n");
}

x

#######
#Multiple else statements
#######
x = 1.0
if ( x < 0.2)
{
  x <- x + 1
  cat("increment that number!\n")
} else if ( x < 2.0)
{
  x <- 2.0*x
  cat("not big enough!\n")
} else
{
  x <- x - 1
  cat("nah, make it smaller.\n");
}

x

#######
#For loop
#######
x <- 1:10
z <- NULL
for(i in seq(along=x)) { 
  if(x[i] < 5) { 
    z <- c(z, x[i] - 1)  
  } else { 
    z <- c(z, x[i] / x[i])  
  } 
}
z

#######
#While statement
#######
lupe <- 1;
x <- 1
while(x < 4)
{
  x <- rnorm(1,mean=2,sd=3)
  cat("trying this value: ",x," (",lupe," times in loop)\n");
  lupe <- lupe + 1
}

#######
#Repeat loop
#######
z <- 0
repeat { 
  z <- z + 1
  print(z)
  if(z > 100) break() 
}

#######
#Break and next statements
#'Next' is used to skip statements that follow and restart current loop. 
#If the 'Next' statement is in a forloop then it will update the loop variable.
#'Break' stops the execution of the loop
#######
x <- rnorm(5)
x

for(lupe in x)
{
  if (lupe > 2.0)
    next
  
  if( (lupe<0.6) && (lupe > 0.5))
    break
  
  cat("The value of lupe is ",lupe,"\n");
}

########
#Switch statements
#'switch' takes an expression and returns a value in a list based on the value of the expression. 
#If the result of the expression is a number then it returns the item in the list with the same index. 
#If the result of the expression is a string, then the list of items should be in the form “valueN”=resultN, and the statement will return the result that matches the value.
#######
x <- as.integer(2)
x

z = switch(x,1,2,3,4,5)
z

x <- 3.5
z = switch(x,1,2,3,4,5)
z

y <- rnorm(5)
y

x <- "sd"
z <- switch(x,"mean"=mean(y),"median"=median(y),"variance"=var(y),"sd"=sd(y))
z

x <- "median"
z <- switch(x,"mean"=mean(y),"median"=median(y),"variance"=var(y),"sd"=sd(y))
z

#######
#Making a function
#The last expression in the function is what is returned
#######
myfct <- function(x1, x2=5) { 
  z1 <- x1/x1
  z2 <- x2*x2
  myvec <- c(z1, z2) 
  return(myvec)
} 

myfct # prints definition of function
myfct(x1=2, x2=5) # applies function to values 2 and 5
myfct(2, 5) # the argument names are not necessary, but then the order of the specified values becomes important
myfct(x1=2) # does the same as before, but the default value '5' is used in this case

#######
#Function with optional arguments
#######
myfct2 <- function(x1=5, opt_arg) {
  if(missing(opt_arg)) { # 'missing()' is used to test whether a value was specified as an argument
    z1 <- 1:10 
  } else {
    z1 <- opt_arg 
  }   
  cat("my function returns:", "\n") #concatenate and print
  return(z1/x1)
}  

myfct2(x1=5) # performs calculation on default vector (z1) that is defined in the function body
myfct2(x1=5, opt_arg=30:20) # a custom vector is used instead when the optional argument (opt_arg) is specified

########
#Function using a warning message.
#The warning function prints out a message without stopping the flow of the function
#The stop function prints the error
#######

myfct <- function(x1) {
  if (x1>=0) print(x1) else stop("This function did not finish, because x1 < 0")
  warning("Value needs to be > 0")
}
myfct(x1=2)


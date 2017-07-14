# Experiments - Categories - repeated experiments with equal probabilities

# Set these variables:

# How many categories do you have?
categories <- 4

# How many experiment do you want to perform?
experiments <- 32

# How many categories would you like to do in one experiment? 
groups <- 2

# Do not change code from here:
categories <- letters[seq(1,categories)]
stop<-F
n <- 0
while(stop==F) {
    Z<-sample(categories,groups,replace=F)
    for(i in 1:(experiments-1)) { 
        Z<-rbind(Z,sample(categories,groups,replace=F)) 
    }
    k<-table(as.vector(Z))
    s <- length(Z)/length(categories)
    if (k['a'] == s & k['b'] == s & k['c'] == s & k['d'] == s) {
        stop = T
    }
    n <- n+1
}
table(Z)
Z


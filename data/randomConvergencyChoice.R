set.seed(2357) #set seeding with the first 3 primes - because of reasons
functions <- sample(1:24, 4, replace=T)
set.seed(2357)
dimensions <- sample(c(10,20,40), 3, replace=T)
dimensions[4] <- 40 # to have all dimensions represented
set.seed(2357)
tournamentsize <- sample(2:24, 4, replace=T)
set.seed(2357)
gen_scheme <- c("lambda, lambda", "lambda + lambda")
set.seed(2357)
scheme <- sample(gen_scheme, 4, replace=T)

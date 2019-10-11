## Put comments here that give an overall description of what your
## functions do
## Coursera Data Science: R Programming Week 3 Assignment 
## GitHub user: sebastiancincelli
## Write a short comment describing this function


## This function creates a  "matrix" object that can cache the inverse
makeCacheMatrix <- function(x = matrix()) {   ## define the argument

	inv <- NULL                             ## initialize inv as NULL
    set <- function(y) {                    ## define the set function to assign 
         x <<- y                             ## value of matrix in parent environment
         inv <<- NULL                        ## if there is a new matrix, reset inv to NULL
     }
     get <- function() x                     ## define the get fucntion - returns matrix value     

     setinverse <- function(inverse) inv <<- inverse  ## assigns value of inv in parent environment
     getinverse <- function() inv                     ## gets the value of inv 
     list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  ## in order to refer to the functions with the $ operator
                                                                                
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" above function.
## If the inverse has already been calculated (and the matrix has not changed), it will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


     inv <- x$getinverse()
     if(!is.null(inv)) {
         message("getting cached data")
         return(inv)
     }
     data <- x$get()
     inv <- solve(data, ...)
     x$setinverse(inv)
     inv
 }
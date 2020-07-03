## Put comments here that give an overall description of what your
## functions do

## My function caches the inverse of the matrix and can retrieve it using the get function.

## Write a short comment describing this function
## This function creates a cached matrix with various different function
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m<<- NULL
    }
    get <- function() x
    setInverse <- function(solve) m <<- solve(x)
    getInverse <- function() m
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function solves the inverse of the cached matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)){
        message("Getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
}



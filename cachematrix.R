## setwd("~/RStudio samples/coursera course 2")

Firstly I input x as a matrix

My solved value "k" as a null

Every reference was set to "mean" to "solve"

makeCacheMatrix <- function(x = matrix()) {
    
    k <- NULL
    set <- function(y) {
        x <<- y
        k <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) k <<- solve
    getsolve <- function() k
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}





Likewise I set every reference "mean" to "solve" and "m" to "k"

## This was done to return a matrix that is the inverse of 'x'



cacheSolve <- function(x, ...) {
    
    k <- x$getsolve()
    if(!is.null(k)) {
        message("getting inversed matrix")
        return(k)
    }
    data <- x$get()
    k <- solve(data, ...)
    x$setsolve(k)
    k    
}

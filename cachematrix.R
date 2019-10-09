## setwd("~/RStudio samples/coursera course 2")

Firstly I input x as a matrix
My solved value "s" as a null
Every reference was set to "mean" to "solve"
makeCacheMatrix <- function(x = matrix()) {

  s <- NULL

  set <- function(y) {

    x <<- y

    s <<- NULL

  }

  get <- function() x

  setsolve <- function(solve) s <<- solve

  getsolve <- function() s

  list(set = set, get = get,

       setsolve = setsolve,

       getsolve = getsolve)

}


Likewise I set every reference "mean" to "solve" and "m" to "s"
## This was done to return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
        s <- x$getsolve()

  if(!is.null(s)) {

    message("getting inversed matrix")

    return(s)

  }

  data <- x$get()

  s <- solve(data, ...)

  x$setsolve(s)

  s
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  	get <- function() { x }
  	setSolve <- function(solve) {s <<- solve }
  	getSolve <- function() {s}
  list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  s <- x$getSolve()
  	if(!is.null(s)) {
    	message("reading data from memory")
    	return(s)
  }
  	data <- x$get()
  	s <- solve(data, ...)
  	x$setSolve(s)
  	return(s)
}

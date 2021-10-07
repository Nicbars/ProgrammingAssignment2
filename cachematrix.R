## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrixinverse <- function(inverse) m <<- inverse
  getmatrixinverse <- function() m
  list(set = set, get = get, 
       setmatrixinverse = setmatrixinverse,
       getmatrixinverse = getmatrixinverse)

  cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}

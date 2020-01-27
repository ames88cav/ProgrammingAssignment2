## The first function "makeCacheMatrix" creates a matrix function that can cache the inverse of a matrix.


## this can cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        z <- NULL
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) z <<- inverse
  getinverse <- function() z
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## this retrives the inverse of a cache

cacheSolve <- function(x, ...) {  z <- x$getinverse()
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setinverse(z)
  z
        ## Return a matrix that is the inverse of 'x'
}

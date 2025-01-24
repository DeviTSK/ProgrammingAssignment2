## To cache the inverse of a matrix
## Create a "Matrix" object to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) m <<- solveMatrix
  getinverse <- function() m
  list(set =set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Calculates the inverse of the "Matrix" returned by the above function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}
    

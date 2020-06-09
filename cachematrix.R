## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The function stores the inverse of the matrix and get the inverse
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

## The function calculates the inverse if it doesn't exist, otherwise
## it calculates the inverse and stores it.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached matrix")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat)
  x$setInverse(i)
  i
}

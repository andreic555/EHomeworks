## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
  set <- function(y) 
  {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInv <- function(v) inv <<- v
  getInv <- function() inv
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mt <- x$get()
  inv <- solve(mt, ...)
  x$setInv(inv)
  inv
}

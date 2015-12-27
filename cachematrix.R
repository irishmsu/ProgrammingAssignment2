## The below 2 functions create a matrix of itself and a matrix  if its inverse. 

## This function creates a matrix that can cache its own inverse.

makeCacheMatrix <- function(x = matrix())
{
  InverseMatrix <- NULL
  set <- function(y) 
  {
    x <<- y
    InverseMatrix <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) InverseMatrix <<- inverse
  getInverse <- function() InverseMatrix 
  list(set = set, get = get, setInverse = setInverse, getInverse = 	  	getInverse)
}


## This function calculates an inverse of the above makeCacheMatrix

cacheSolve <- function(x, ...)
{
  ## Return a matrix that is the inverse of 'x'
  InverseX <- x$getInverse()
  if(!is.null(InverseX))
  {
    message("getting cached data")
    return(InverseX)
  }
  
  data <- x$get()
  InverseX <- solve(data, ...)
  x$setInverse(InverseX)
  InverseX 
}

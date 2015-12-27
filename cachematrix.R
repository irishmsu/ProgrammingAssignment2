## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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

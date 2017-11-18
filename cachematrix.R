## The makeCacheMatrix function creates a special matrix and cache its inverse. 
## functions do

makeCacheMatrix <- function(x = matrix()){
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setin <- function(solve) inv  <<- solve
	getin <- function() inv
	list(set=set, get=get, setin=setin, getin=getin)
}


## The cache Solve function computes the inverse of the above mentioned special matrix. It has to get the inverse back from the cache when it has already been calculated.
## Note: If x variable is a square invertible matrix, the slove(x) will return its inverse

cacheSolve <- function(x) {
  inv <- x$getinverse()
  if (!is.null(inv)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setin(inv)
  inv
}

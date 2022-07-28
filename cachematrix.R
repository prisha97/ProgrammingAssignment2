## This code (first funtion) gets a matrix, finds its inverse and stores the value in a cache that can be called



## makeCacheMatrix sets the value of function as matrix x, gets the matrix, 
##then sets an inverse computation of the matrix and then gets the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## cacheSolve recalls the inverse value if found in the previous funcition and prints it out. 
## incase inverse does not exist, it gets the matrix x and finds the inverse and prints out the value

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
    
        ## Return a matrix that is the inverse of 'x'
}

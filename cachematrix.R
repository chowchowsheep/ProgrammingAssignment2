## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
 #  function takes a matrix as an input and sets the value of the matrix.
 #  it gets the value of the matrix, sets the inverse matrix and gets the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  
  M <- NULL
  set <- function(y) {
    x <<- y
    M <<- NULL
  }
  get <- function() x
  setMatrix <- function(Inv) M <<- Inv
  getMatrix <- function() M
  list(set=set,get=get,setMatrix=setMatrix,setMatrix=setMatrix)
}


## Write a short comment describing this function
 #  if the variable M is not empty, it will return the cached data from previous
 #  if the variable M is empty, it will run the solve function to generate the inverse of the input matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  M <- x$getMatrix()
  if(!is.null(M)){
    message("getting cached data")
    return(M)
  }
  data <- x$get()
  M <- solve(data, ...)
  x$setMatrix(M)
  return(M)
}

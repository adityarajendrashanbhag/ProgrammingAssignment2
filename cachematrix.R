## Put comments here that give an overall description of what your
## functions do
## there are two functions makeCacheMatrix
## makeCacherMatrix consists of set,get,setinv,getinv

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 j <- x$getInverse()
 if(!is.null(j)){
   message("getting cached data")
   return(j)
 }
 mat <- x$get()
 j <- solve(mat,...)
 x$setInverse(j)
 j
}

## Functions to cache inverse of a matrix

## Creation of matrix object

makeCacheMatrix <- function(x = matrix()) {
a<- NULL
set<- function(y){
  x <<- y
  a <<-NULL
}
get<- function()x
setInverse<- function()a <<- inverse
list(set = set, get=get,
     setInverse = setInverse,
     getInverse = getInverse)
}


##  Computes the inverse of the matrix returned by "makeCacheMatrix"
## If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 
'x'a<-x$getInverse()
if(!is.null(a)){
  message("getting cached data")
  return(a)
}
mat <- x$get()
a<- solve(mat,...)
x$setInverse(a)
a
}

## Put comments here that give an overall description of what your
## functions do

## Makes a list which contains functions to get the matrix, set
## the matrix, find its inverse, and get its inverse  

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) i <<- inverse
    getInverse <- function() i
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## 

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
}

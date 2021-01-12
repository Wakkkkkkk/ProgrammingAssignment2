## Put comments here that give an overall description of what your
## functions do

## Makes a list which contains functions to get the matrix, set
## the matrix, save its inverse, and get its inverse  

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) i <<- inverse
    getInverse <- function() i
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Searches for the inverse of the matrix, and if found it
## returns that, otherwise it calculates the inverse, saves it,
## then returns it.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    if(!is.null(i)){#If the inverse isn't null, then return it
        message("getting cached inverse matrix")
        return(i)
    }
    matrix <- x$get()
    inverse <- solve(matrix)
    x$setInverse(matrix)
    inverse
}

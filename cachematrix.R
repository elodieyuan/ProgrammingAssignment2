## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    #set the value of the matrix
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    #get the value of the matrix
    get <- function() x
    #set the value of the inverse of the matrix
    setinverse <- function(inverse) inv <<- inverse
    #get the value of the inverse of the matrix
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}

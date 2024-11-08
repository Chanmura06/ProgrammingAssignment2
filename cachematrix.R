## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL  # Initialize the cached inverse as NULL

    set <- function(y) {
        x <<- y
        inv <<- NULL  # Reset the inverse cache when the matrix is changed
    }
    
    get <- function() x  # Returns the matrix
    
    setInverse <- function(inverse) inv <<- inverse  # Cache the inverse
    
    getInverse <- function() inv  # Returns the cached inverse if it exists

}

list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()  # Check if inverse is already cached
    
    if (!is.null(inv)) {  # If cached, return the cached inverse
        message("getting cached data")
        return(inv)
        ## Return a matrix that is the inverse of 'x'
            data <- x$get()  # Get the matrix
    
    inv <- solve(data, ...)  # Compute the inverse
    x$setInverse(inv)  # Cache the computed inverse
    
    inv  # Return the inverse
}

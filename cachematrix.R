## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    # Initialize the inverse cache

    myInverse <- NULL

    #

    get <- function() myMatrix

    #

    set <- function(newMatrix) {
        myMatrix  <<- newMatrix
        myInverse <<- NULL
    }

    #

    get_inverse <- function() NULL

    #

    set_inverse <- function() NULL

    #

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

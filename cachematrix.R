## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(myMatrix = matrix()) {

    # Initialize the inverse cache

    myInverse <- NULL

    # Retrieve the matrix

    get <- function() myMatrix

    # Retrive the matrix's inverse

    get_inverse <- function() myInverse

    # Assign a new value to the matrix

    set <- function(newMatrix) {
        myMatrix  <<- newMatrix
        myInverse <<- NULL
    }

    # Compute a new inverse

    set_inverse <- function(newInverse) myInverse <<- newInverse

    # Return a list of the constituent functions

    list(
        get         = get,
        get_inverse = get_inverse,
        set         = set,
        set_inverse = set_inverse
    )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

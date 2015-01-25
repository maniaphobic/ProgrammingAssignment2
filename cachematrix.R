#----------------------------------------
# 
#


#----------------------------------------
# Define functions
#


#
# makeCacheMatrix
#
# This function takes a matrix and bundles it in a list containing
# functions for accessing the matrix and its inverse.
#
# Arguments:
#
#   - myMatrix (optional): an invertible matrix. This argument
#   defaults to an empty matrix.
#
# Return value: a list comprised of several functions:
#
#   - cache_is_dirty: a predicate that determines if the cache needs
#   to be refreshed
#
#   - cache_is_empty: a predicate that determines if the cache is
#   empty
#
#   - get: retrieves the cached matrix
#
#   - get_inverse: retrieves the cached matrix inverse
#
#   - set: replaces the cached matrix
#
#   - set_inverse: replaces the cached matrix inverse
#

makeCacheMatrix <- function(myMatrix = matrix()) {

    # Initialize the inverse cache

    myInverse <- NULL

    # Is the cache dirty?

    cache_is_dirty <- function(newMatrix) {
        identical(get(), newMatrix)
    }

    # Is the cache empty?

    cache_is_empty <- function() is.null(get_inverse())

    # Retrieve the matrix

    get <- function() myMatrix

    # Retrive the matrix's inverse

    get_inverse <- function() myInverse

    # Assign a new matrix

    set <- function(newMatrix) {
        myMatrix  <<- newMatrix
        myInverse <<- NULL
    }

    # Assign a new inverse

    set_inverse <- function(newInverse) myInverse <<- newInverse

    # Return a list of the constituent functions

    list(
        cache_is_dirty = cache_is_dirty,
        cache_is_empty = cache_is_empty,
        get            = get,
        get_inverse    = get_inverse,
        set            = set,
        set_inverse    = set_inverse
    )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {

    # This function populates the cache if it's empty or the matrix
    # has changed

    populate_cache <- function(thisMatrix) {
        if (x$cache_is_empty() || x$cache_is_dirty(thisMatrix)) {
            print("[NOTICE] Populating the cache") #DEBUG#
            thisMatrix$set_inverse(solve(thisMatrix$get()))
        }
    }

    # Populate the cache
    # Retrieve the inverse

    populate_cache(x)
    x$get_inverse()

}

## Functions that chache the inverse of a matrix

## Creates a special matrix object that can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
## The inverse property
inv <- NULL
## Method to set the matrix
set <- function(y) {
	x<<- y
	inv <<- NULL
}
## Method to get the matrix
get <- function(){
	x}
setinverse <- function(inverse){
	inv <<-inverse)
getinverse <- function(){
	inv}
	## Return a list of the methods
list (set=get, get=get,
setinverse= setinverse
getinverse= getinverse)
}


## Compute the inverse of the special matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getInverse()
        if(!is.null(inv)){
        	message ("getting cached data")
        	return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        ## Set the inverse to the object
        x$setinverse(inv)
       ## Return the matrix 
       inv
}

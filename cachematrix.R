## The following code is used to find the matrix inversion .
## Matrix inversion is usually costly computation in terms of time taken to compute the result,
## The following code ,overcomes the above said problem ,by .........
##            ...........caching the matrix inversion rather than compute it repeatedly. 


## the function 'makeCacheMatrix' takes 'x' as input ,which is of class 'matrix' 
## initially 'x' is assigned a list of elements.
## then itis converted to matrix.
## 

makeCacheMatrix <- function(x = matrix()) {                             ## ' 

dim(x)<-c(2,2)
  i<- NULL
  set <- function(y) {
    
    dim(y)<-c(2,2)
    x <<- y
    
    i <<- NULL

}


## Write a short comment describing this function
Th e
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
      i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i  
}

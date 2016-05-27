## Put comments here that give an overall description of what your
## functions do

## This matrix object can cahe its inverse.

makeCacheMatrix <- function(x = matrix()) {
  v<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) v<<- solve
  getmatrix<-function() v
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## This function computes the inverse  returned by makeCacheMatrix above. 


cacheSolve <- function(x=matrix(), ...) {
  v<-x$getmatrix()
  if(!is.null(m)){
    message("retrieving cached data")
    return(m)
  }
  matrix<-x$get()
  v<-solve(matrix, ...)
  x$setmatrix(v)
  m
}

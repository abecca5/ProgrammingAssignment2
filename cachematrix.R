##These function cachethe inverse of a matrix

##This function creates a matrix which is just a list containing 
##functions to set the value of a matrix, get the value of the matrix, 
##set the value of the matrix, and get the value of the matrix
makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function (y){
  x<<-y
  inv<<-NULL
}
get<-function()x
setInv<-function(inverse) inv<<-inverse
getInv<-function()inv
list(set=set, get=get, setInv=setInv, getInv=getInv)

}


## This function takes the matrix from the first function and calculates 
##its inverse

cacheSolve <- function(x, ...) {
  z<-x$getInv()
  if(!is.null(z)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  z<-solve(data)
  x$setInv(z)
  z
        ## Return a matrix that is the inverse of 'x'
}

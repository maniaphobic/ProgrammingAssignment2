#
source("cachematrix.R")
#
m <- makeCacheMatrix(diag(1024))
Rprof(NULL)
Rprof("cache,without.prof")
inv <- cacheSolve(m)
Rprof(NULL)
#
Rprof("cache,with.prof")
inv <- cacheSolve(m)
inv <- cacheSolve(m)
inv <- cacheSolve(m)
inv <- cacheSolve(m)
inv <- cacheSolve(m)
Rprof(NULL)
#
summaryRprof("cache,without.prof")
summaryRprof("cache,with.prof")
#

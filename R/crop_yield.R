

#'Annual Crop Yield
#' @param f amount of fertilizer used
#' @param TP mean precipitation
#' @return Y Crop Yield
#' 
# Function definition

crop_yield = function(f, TP) {
  y = 1.8*f^2 - 0.5*f+0.3*TP
  return(y)
}



#' Net present value function
#' @param i discount rates
#' @param v value of damages
#' @param t time (years)
#' @return npv , net present value
#' 
# Function definition

# to get net present value of damages

npv = function(i, v, t) {
  npv = v/((1 + i)^t)
  return(npv)
}

#automobile_power_gen.R

#'Automobile Power Generation
#' This function determines the power required to keep a car moving at a certain speed
#' @param speed vehicle speed (m/s)
#' @param mass vehicle mass (kg)
#' @param A surface area of car (m2)
#' @param g acceleration due to gravity (m/s2) default = 9.8
#' @param p_air density of are (kg/m3) default = 1.2
#' @param crolling aerodynamic resistance coefficient, default = 0.015
#' @param cdrag aerodynamic resistance coefficient, default = 0.3
#' @return Pb power (W)

# function definition

aut_power_gen = function(mass, speed, A, crolling=0.015, g=9.8, p_air= 1.2,cdrag = 0.3){
  result = crolling*mass*g*speed + 1/2*A*p_air*cdrag*speed^3
  return(result)
}



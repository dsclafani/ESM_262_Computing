#' Temperature Equation

#' @param climate_data data with information column name tmax (F)
#' @param tmax maximum daily temperature (F)
#' @param date date_1 column includes days from 2017-2021
#' @return returns a list containing
#' \describe {
#' \item {warmest_year}{year with the highest tmax}
#' \item {classification}{using case when will classify temperatures accordingly:
#' below 84 degrees = low risk
#' 85-94 = medium risk
#' 95-115 = medium high risk
#' 115-124 = high risk
#' 125 and above = very high risk}
#' }
#


temperature_risk = function(climate_data, tmax, date){
  library(tidyverse)
  
  climate_data %>% 
    mutate(risk_level = case_when(
      tmax >= 84 ~"low risk",
      tmax %in% 85:94 ~ "medium risk",
      tmax %in% 95:115 ~ "medium high risk",
      tmax %in% 116:124 ~ "high risk",
      tmax <= 125 ~ "very high risk"
    ))
  
  risk_year = climate_data %>%  group_by(year) %>% summarise(risk_level)
  
  temp_extremes = risk_year %>% 
    group_by(year, risk_level) %>% 
    count() %>% 
    summarize(warmest_year = year(which.max(risk_level)))
  
  
  return(list(as.list(temp_extremes), risk_year[,c("year","risk_level","n")]))

}
  
  

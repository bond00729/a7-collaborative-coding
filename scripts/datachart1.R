#Script for the data visualization

build_chart <- function(data){
  library(plotly)
  library(dplyr)
  
  formatted_data <- select(data, What.is.your.current.class.standing., What.is.your.programming.experience.)
  count_data <- group_by(formatted_data, What.is.your.programming.experience., 
                         What.is.your.current.class.standing.) %>% 
    summarise(count = n())
    
  my_chart <- plot_ly(count_data,
                      x = What.is.your.programming.experience.,
                      y = count,
                      type ="bar",
                      color = What.is.your.current.class.standing.
  ) %>%  layout(title = "Programming Experience in INFO 498F")
  return(my_chart)
}




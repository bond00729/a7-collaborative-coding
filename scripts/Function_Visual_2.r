#Visualization of data from survey

#Setup and installation
library(dplyr)
library(plotly)

#Function of vizualization that takes in a database as a parameter
#data <- read.csv("https://raw.githubusercontent.com/INFO-498F/a7-survey-data/master/intro_survey_data.csv")
Function_Visual_2 <- function(df){
  df <- df %>% select(What.is.your.current.class.standing., How.many.countries.have.you.visited.in.your.life.) %>% 
               group_by(What.is.your.current.class.standing.) %>% 
               summarize(Countries = sum(How.many.countries.have.you.visited.in.your.life.))
  colnames(df)[1] <- 'Class'
  return(plot_ly(df, 
                 x = Class, 
                 y = Countries, 
                 type = "bar",
                 text = paste('<b>Class:</b>', df$Class, '<br><b>Countries:</b>', df$Countries),
                 hoverinfo = 'text'
  )%>%
    layout(title = 'Number of countries visited by Class')
        )
}

#Test
#Function_Visual_2(data)

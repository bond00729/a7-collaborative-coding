# Summary_info

info_function <- function(survey_data) {
  survey_summary <- list()
  survey_summary$length <- length(survey_data)
  survey_summary$student_count <- nrow(survey_data)
  survey_summary$Mac_count <- sum(survey_data$What.operating.system.do.you.typically.use. == 'Mac', na.rm = FALSE)
  survey_summary$info_prospectives <- sum(survey_data$Are.you.interested.in.applying.to.the.Informatics.major. == 'Yes', na.rm = FALSE)
  return(survey_summary)
} 
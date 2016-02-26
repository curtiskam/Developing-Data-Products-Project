
# This is the ui logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Airline Passengers per Month"),
        sidebarPanel(
            numericInput('Year', 'Enter Year', value=1949, min = 1949, max = 1960, step = 1),
            submitButton('Submit')
        ),
        mainPanel(
           plotOutput('MonthlyPassengers')
        )
    )
)

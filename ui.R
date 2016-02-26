
# This is the ui logic for a Shiny web application.
# This app asks the user to pick a year between 1949 and 1960
# then plots the number of airline passengers for that tear
# by month

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

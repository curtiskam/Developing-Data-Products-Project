
# This is the server logic for a Shiny web application.
# This app asks the user to pick a year between 1949 and 1960
# then plots the number of airline passengers for that tear
# by month

library(forecast)
data(AirPassengers)

shinyServer(
    function(input, output) {
        output$MonthlyPassengers <- renderPlot({seasonplot(window(AirPassengers,start=c(input$Year,1),
        end=c(input$Year,12)), ylab="Passengers in Thousands", main="Passengers for Year")})
    }
)
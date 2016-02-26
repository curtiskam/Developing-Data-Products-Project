
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(forecast)
data(AirPassengers)

shinyServer(
    function(input, output) {
        output$MonthlyPassengers <- renderPlot({seasonplot(window(AirPassengers,start=c(input$Year,1),
        end=c(input$Year,12)), ylab="Passengers in Thousands", main="Passengers for Year")})
    }
)
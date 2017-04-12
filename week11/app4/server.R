# ---- app4-server ----

library(shiny)

function(input, output) {
  output$plot1 <- renderPlot({
    set.seed(2016-12-13)
    number_of_point <- ifelse(input$num_points > 1000,1000,input$num_points) # set a cap on the plot
    dataX <- runif(number_of_point, input$sliderX[1], input$sliderX[2])
    dataY <- runif(number_of_point, input$sliderY[1], input$sliderY[2])
    
    xlab <- ifelse(input$show_xlab, "X Axis", "")
    ylab <- ifelse(input$show_ylab, "Y Axis", "")
    main <- ifelse(input$show_title, "Title", "")
    
    plot(dataX, dataY, xlab = xlab, ylab = ylab, main = main,
         xlim = c(-100, 100), ylim = c(-100, 100))
  })
}
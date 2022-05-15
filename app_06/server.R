server <- function(input, output, session) {
  var_title <- reactive({
    create_label(input$variable)
  })
  
  output$plot <- renderPlot({
    ggplot(iris, aes_string("Species", input$variable)) +
      geom_boxplot(fill = "royalblue") +
      theme_classic() + 
      ylab(var_title())
  })
  
  output$title <- renderText({
    paste0(var_title(), " by Species")
  })
}
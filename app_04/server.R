server <- function(input, output, session) {
  var_title <- reactive({
    gsub(".", " ", input$variable, fixed = TRUE)
  })
  
  output$plot <- renderPlot({
    ggplot(iris, aes_string("Species", input$variable)) +
      geom_boxplot(fill = "royalblue") +
      theme_classic() + 
      theme(axis.text = element_text(size = 15),
            axis.title = element_text(size = 20)) +
      ylab(var_title())
  })
  
  output$title <- renderText({
    paste0(var_title(), " by Species")
  })
}
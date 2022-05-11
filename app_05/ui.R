ui <- fluidPage(
  title = "Data explorator",
  
  tags$head(
    tags$link(href = "style.css", rel = "stylesheet", type = "text/css")
  ),
  
  # Application title
  titlePanel("Iris Data Explorator"),
  
  # Sidebar Layout
  sidebarLayout(
    
    # Sidebar Panel
    sidebarPanel(
      h3("Settings panel"),
      p("Select variable to be displayed on a y axis."),
      hr(),
      selectInput("variable", "Variable", choices = variable_choices),
      class = "sidebar-container"
    ),
    
    # Main Panel
    mainPanel(
      h3(textOutput("title")),
      plotOutput("plot")
    )
  )
)
ui <- fluidPage(
  title = "Data explorator",
  
  # Application title
  headerPanel("Iris Data Explorator"),
  
  # Sidebar Layout
  sidebarLayout(
    
    # Sidebar Panel
    sidebarPanel(
      h3("Settings panel"),
      p("Select variable to be displayed on a y axis."),
      hr(),
      selectInput("variable", "Variable", choices = variable_choices)
    ),
    
    # Main Panel
    mainPanel(
      h1(textOutput("title")),
      plotOutput("plot")
    )
  )
)
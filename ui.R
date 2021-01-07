### Data Science Capstone : Course Project
### ui.R file for the Shiny app

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))

shinyUI(navbarPage("Data Science Capstone",
                   tabPanel("Natural Language Processing",
                            HTML("<strong>Carlos Henrique</strong>"),
                            br(),
                            HTML("<strong>07/01/2021</strong>"),
                            br(),
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("Please input a sentence missing the next word to be predicted"),
                                    textInput("inputString", "Input your sentence here",value = ""),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                    h2("Prediction of the next word"),
                                    verbatimTextOutput("prediction"),
                                    strong("What you typed:"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: red;}'), 
                                    textOutput('text1'),
                                    br(),
                                    strong("Warning:"),
                                    tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                    textOutput('text2')
                                )
                            )
                            
                   ),
                   tabPanel("Background",
                            mainPanel(includeMarkdown("milestoneReport.Rmd")
                            )
                   )
)
)
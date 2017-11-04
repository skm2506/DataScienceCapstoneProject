##############################################################################

## Assignment: Coursera DataScienceFinalProject
## Created by: Shashikesh Mishra
## Github Repository: https://github.com/skm2506/DataScienceCapstoneProject

#############################################################################


    library(shinythemes)
    library(shiny)
shinyUI(navbarPage("DataScienceCapstoneProject",
                   fluidPage( headerPanel("Word Predict App"

    ),
    theme = shinytheme("cerulean"),


    sidebarPanel(
        h2("Synopsis:"),
        p("This application was created as an academic project for the Capstone Course of the Coursera Data Science Specialization. We used natural language proccessing models, namely, n-grams, Markov model, and Katz's back-off model to produce the predictions."),
        p("The main goal of this capstone project is to build a shiny application that is able to predict the next word.

          This exercise was divided into seven sub tasks like data cleansing, exploratory analysis, the creation of a predictive model and more.

          All text data that is used to create a frequency dictionary and thus to predict the next words comes from a corpus called HC Corpora.

          All text mining and natural language processing was done with the usage of a variety of well-known R packages.")

        ),


#################################Main-Panel################################

    mainPanel(
        h3("Input You Text Here!"),
        textInput("inputTxt", "English Language Only:", width = "80%"),
        uiOutput("words"),
        br(),
        wellPanel(
            h4("Additional Information"),
            HTML("<p>Source code is freely available at <a href='https://github.com/skm2506/DataScienceCapstoneProject' target='_blank'>https://github.com/skm2506/DataScienceCapstoneProject</a></p>"),
            HTML("<p>A detailed application architecture presentation available at <a href='http://rpubs.com/skm2506/DataScienceCapstoneProject' target='_blank'>http://rpubs.com/skm2506/DataScienceCapstoneProject</a></p>"),

#############################FOOTER###########################################
            tags$hr(),

            tags$br(),

            tags$span(style = "color: grey",
                      tags$footer(("© 2017 - "),
                                  tags$a(
                                      href = "https://github.com/skm2506/DataScienceCapstoneProject",
                                      target = "_blank",
                                      "Shashikesh Mishra"),
                                  tags$br(),
                                  ("Built with"), tags$a(
                                      href = "http://www.r-project.org/",
                                      target = "_blank",
                                      "R"),
                                  ("&"), tags$a(
                                      href = "http://shiny.rstudio.com",
                                      target = "_blank",
                                      "Shiny."),
                                  ("&"), tags$a(

                                      align = "center"),

                                  tags$br()
        )

    )
)))))

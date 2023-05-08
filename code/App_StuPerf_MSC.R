library(shiny)
library(dplyr)
library(tidyverse)
library(boot)
library(coefplot)
library(modelr)
library(openintro)
library(brglm)
library(mombf)
library(pROC)
library(keras)
library(mlbench)
library(mgcv)
library(ggpubr)
library(huxtable)
library(jtools)
library(randomForest)
library(MASS)
source('~/github/MSC-Final-Project/code/routines.R')
mat <- read.csv2('~/github/MSC-Final-Project/data/student-mat.csv')
df <- mat
df$pass <- ifelse(df$G3>9, 1 ,0)


#- The user selects a variable values in our student performancy dataset 

#- A scatterplot of the final grade vs the second period grade is shown adding a regression line and a theoretical 45° line

#- The estimated regression coefficients for XXX regression are reported as separate text output

#Define the user interface
ui= fluidPage(
  
  titlePanel("Student Performance data"),
  
  selectInput("G3", label="Which Final Grade would you have?", choices= sort(unique(df$G3))),
  
  submitButton("Get results"),
  
  h2("Data"),
  dataTableOutput("selecteddata"),
  
  p("Scatterplot of Final Grade vs Second Period Grade"),
  
  plotOutput("myplot"),
  
  p("Binary Regression Results - Who fails Mathematics?"),
  
  tableOutput("summary")
  

)

#Define the server calculations
server= function(input, output, session) {

  #Avoid code duplication and repeating computations. 
  #Since several output components use the same data, define a reactive expression (mydata below) 
  #The result is a dataset but it's accessed like a function, i.e. mydata()
  mydata= reactive({
    filter(df, G3 == input$G3)
  })
  
  output$tablecountry= renderPrint({
    table(mydata()$G3)
  })
  
  output$selecteddata= renderDataTable({
    mydata()
  })
  
  output$myplot= renderPlot({
    #mytitle= paste("Final Grade vs. Second Period Grade", color=df$pass, collapse="")
    ggplot(df, aes(G1,G3,color=pass))+ geom_point(position="jitter")+ geom_smooth()+ geom_abline(slope=1)+ coord_cartesian(xlim=c(0,20), ylim=c(0,20))+labs(x="First Period grade",y="Final Grade")
  })
  output$summary=renderTable({
    fitbin <- glm(pass~Fedu+ famrel+ goout+ Walc+ G2,data=df,family="binomial")
    coefSummary(fitbin)
  })
}

#run App
shinyApp(ui, server)
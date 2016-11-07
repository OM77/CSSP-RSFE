
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  titlePanel("CS SP: Ratio Spread Forward Extra"),
  
  br(),
  
  fluidRow(
    column(selectInput(inputId="ccy", label="Ccy Pair", choices=g.ccy$name, selected=NULL, selectize=TRUE, width=NULL), width=1),
    column(uiOutput("client.buys.rnd"), width=1),
    column(uiOutput("notional.ccy.rnd"), width=1)
  ),
  
  radioButtons(inputId="strip.occurrences", label="Strip (Occurrences)", choices=1:6, selected=NULL, inline=TRUE, width=NULL),
  
  fluidRow(
    column(uiOutput("expiry1.rnd"),
           uiOutput("expiry2.rnd"),
           uiOutput("expiry3.rnd"),
           uiOutput("expiry4.rnd"),
           uiOutput("expiry5.rnd"),
           uiOutput("expiry6.rnd"), width=2),
    column(uiOutput("notional1.rnd"),
           uiOutput("notional2.rnd"),
           uiOutput("notional3.rnd"),
           uiOutput("notional4.rnd"),
           uiOutput("notional5.rnd"),
           uiOutput("notional6.rnd"), width=2)
  )
  
  

  
))

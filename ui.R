library(shiny)
shinyUI(
	pageWithSidebar(
		# Application title
		headerPanel("Calculator for Body Mass Index (BMI) - Sivarajan Coursera Assignment"),
		sidebarPanel(
			numericInput('weight', 'Please enter your weight in kilograms (kg)', 70) ,
			numericInput('height', 'Please enter your height in metres (m)', 1.70, min = 0.2, max = 3, step = 0.01),
			submitButton('Submit')
		),
		mainPanel(
			p('BMI (Body Mass Index) is a measure of body fat based on height and weight that applies to average adult men and women.'),
			p('Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:'),
			tags$div(
				tags$ul(
					tags$li('BMI <18.5 : Underweight'),
					tags$li('BMI [18.5-24.9] : Normal weight'),
					tags$li('BMI [25-29.9] : Overweight'),
					tags$li('BMI >=30 : Obesity')
				)
			),
		h4('Considering the values entered by you:'),
		p('weight:'), verbatimTextOutput("inputweightvalue"),
		p('height:'), verbatimTextOutput("inputheightvalue"),
		h4('Your calculated BMI is:'),
		verbatimTextOutput("estimation"),
		p('This means you are:'),strong(verbatimTextOutput("diagnostic"))
		)
	)
)
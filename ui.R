Observations = 5000 # number of test simulations
SampleSize = Observations/10 # number of observations

shinyUI(pageWithSidebar(
    headerPanel("Central Limit Theorem"),
    sidebarPanel(
        h4("Use the Slider bar below to see the effect of Sample and Observation Size on the distribution."),

        sliderInput('SampleSize', 'Sample Size / Observation',
                    value = SampleSize/2, min = 50, max = SampleSize, step = 10),
        p("By increasing the Sample Size, we would see the distribution becomes narrower."),
        
        br(),
        
        sliderInput('Observations', 'Number of Observations',
                    value = Observations/2, min = 500, max = Observations, step = 100),
        p("The large number of observations does not have much effect the distribution.")
    ),
    mainPanel(
        plotOutput('myHist'),
        p("The Central Limit Theorem (CLT) states that, given certain conditions, the mean of a sufficiently large number of independent random variables, each with a well-defined mean and well-defined variance, will be approximately normally distributed."),
        p("1. The averages of samples have approximately normal distriution."),
        p("2. The bigger the sample size, the deviation and variance of averages becomes more normal and narrower.")
    )
))
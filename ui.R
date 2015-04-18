Simulations = 5000 # number of test simulations
SampleSize = Simulations/10 # number of observations

shinyUI(pageWithSidebar(
    headerPanel("Central Limit Theorem"),
    sidebarPanel(
        h4("Use the Slider bar below to see the effect of on Sample and Simulation Size on the distribution."),

        sliderInput('SampleSize', 'Sample Size / Simulation',
                    value = SampleSize/2, min = 50, max = SampleSize, step = 10),
        p("By increasing the Sample Size, we would see the distribution becomes narrower."),
        
        br(),
        
        sliderInput('Simulations', 'Number of Simulation',
                    value = Simulations/2, min = 500, max = Simulations, step = 100),
        p("Note that the number of simulations does not has much effect.")
    ),
    mainPanel(
        plotOutput('myHist'),
        p("The Central Limit Theorem (CLT) states that, given certain conditions, the mean of a sufficiently large number of independent random variables, each with a well-defined mean and well-defined variance, will be approximately normally distributed."),
        p("The averages of samples have approximately normal distriution."),
        p("The bigger the sample size, the distribution of averages becomes more normal and narrower.")
    )
))
Simulations = 5000 # number of test simulations
SampleSize = Simulations/10 # number of observations

shinyUI(pageWithSidebar(
    headerPanel("Central Limit Theorem"),
    sidebarPanel(
        sliderInput('Simulations', 'Number of Simulation',
                    value = Simulations/2, min = 100, max = Simulations, step = 100),

        sliderInput('SampleSize', 'Sample Size / Simulation',
                    value = SampleSize/2, min = 10, max = SampleSize, step = 10)
    ),
    mainPanel(
        plotOutput('myHist'),
        p("The Central Limit Theorem (CLT) states that, given certain conditions, the mean of a sufficiently large number of independent random variables, each with a well-defined mean and well-defined variance, will be approximately normally distributed."),
        p("The averages of samples have approximately normal distriution."),
        p("The bigger the sample size, the distribution of averages becomes more normal and narrower.")
    )
))
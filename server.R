shinyServer(
    function(input, output) {
        output$myHist <- renderPlot({
            set.seed(1) # so that this is reproducible
            Observations = input$Observations
            SampleSize = input$SampleSize
            lambda = 0.2
            dataset = data.frame(matrix(rexp(Observations * SampleSize, lambda), Observations))
            
            dataset$row_mean = rowMeans(dataset[,])
            clt_mean = mean(dataset$row_mean)
            clt_sd = sd(dataset$row_mean)
            
            hist(dataset$row_mean, breaks = 20, freq = F,
                 main = "Histogram overlaid with normal distribution curve",
                 xlim=c(0,10), ylim=c(0, 2),
                 xlab="Sample Mean", ylab="Frequency")
            curve(dnorm(x, clt_mean, clt_sd), col = 'red', add = T)
            text(0.8, 1.5, paste("Mean = ", round(clt_mean, 2), 
                                 "\nStd.Dev = ", round(clt_sd, 2)), pos = 4)
        })
    }
)
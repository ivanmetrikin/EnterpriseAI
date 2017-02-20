# Start H2O on local machine using all available cores
library(h2o)

# By default, CRAN policies limit use to only 2 cores
h2o.init(nthreads = -1)

#Show a demo
demo(h2o.glm)
demo(h2o.gbm)
demo(h2o.deeplearning)

# Download the iris.csv
download.file("https://raw.githubusercontent.com/vincentarelbundock/Rdatasets/master/csv/datasets/iris.csv", "iris.csv")

# Train and test the deep learning model
train.hex <- h2o.importFile("iris.csv")
splits <- h2o.splitFrame(train.hex, 0.75, seed=1234)
train.x <- setdiff(colnames(train.hex), c("Petal.Length","C1"))
train.y <- "Petal.Length"
dl <- h2o.deeplearning(x=train.x , y=train.y,
                       training_frame=splits[[1]],
                       distribution="quantile", quantile_alpha=0.8)
h2o.predict(dl, splits[[2]])
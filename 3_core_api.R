# Get source from Github
#devtools::install_github("rstudio/tensorflow")

library(ggplot2)
library(tensorflow)

#install_tensorflow()

sess = tf$Session()
hello <- tf$constant('Hello Tensorflow!')
sess$run(hello)

#Random uniform distribution
x_data <- runif(100, min=0, max=1)
y_data <- x_data * 0.1 + 0.3

df <- data.frame(x_data, y_data)
ggplot(df, aes(x_data, y_data)) + geom_point()


# The goal is to find 0.1 and 0.3
W <- tf$Variable(tf$random_uniform(shape(1L), -1.0, 1.0))
b <- tf$Variable(tf$zeros(shape(1L)))
y <- W * x_data + b


loss <- tf$reduce_mean((y - y_data) ^ 2)
optimizer <- tf$train$GradientDescentOptimizer(0.3)
train <- optimizer$minimize(loss)

sess = tf$Session()
sess$run(tf$global_variables_initializer())

lf <- data.frame(epoch=c(1:201), loss=0)

for (step in 1:201) {
  sess$run(train)
  lf$loss <- sess$run(loss)
    cat(step, "- W: ", sess$run(W), "b: ", sess$run(b), "loss:", sess$run(loss), "\n")
    
}

ggplot(lf, aes(epoch, loss)) +geom_point()




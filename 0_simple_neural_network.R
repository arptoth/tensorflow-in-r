library(tensorflow)
library(keras)

x <-  c(-2, -3, 1, 2, 3, 4, 5)
y <-  c(-3, -5, 3, 5, 7, 9, 11)


model <- keras_model_sequential()
model %>% layer_dense(units = 1, input_shape = c(1))

#summary(model)

model %>% compile(
  loss = loss_mean_squared_error,
  optimizer = optimizer_sgd()
)


history <- model %>% fit(
  x, y, 
  epochs = 100
)

x_test <- c(-1, -13, 18)

model %>% predict(x_test)

get_weights(model)


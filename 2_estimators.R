library(tfestimators)

mtcars$am <-as.factor(mtcars$am)
str(mtcars)

# return an input_fn for a given subset of data
mtcars_input_fn <- function(data, num_epochs = 1) {
  input_fn(data, 
           features = c("wt", "qsec", "am"),
           response = "mpg",
           batch_size = 5,
           num_epochs = num_epochs)
}

cols <- feature_columns(
  column_numeric("wt", "qsec"),
  column_categorical_with_identity("am", num_buckets = 2)
)



model <- linear_regressor(feature_columns = cols)

indices <- sample(1:nrow(mtcars), size = 0.80 * nrow(mtcars))
train <- mtcars[indices, ]
test  <- mtcars[-indices, ]

nrow(mtcars)
nrow(train)
nrow(test)


# train the model
model %>% train(mtcars_input_fn(train, num_epochs = 10))
model %>% evaluate(mtcars_input_fn(test))


obs <- mtcars[1:3, ]
obs
model %>% predict(mtcars_input_fn(obs))






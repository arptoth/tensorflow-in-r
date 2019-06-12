# Tensorflow in R

## Installation instructions
 Please prepare for the meetup with install the necessary libraries.
 
 ### Installing tensorflow
 
```
devtools::install_github("rstudio/tensorflow")
 
library(tensorflow)
install_tensorflow()
```
 
Then test wether everything is on the right way :)
 
```
sess = tf$Session()
hello <- tf$constant('Hello, TensorFlow!')
sess$run(hello)
```

You are good to go!

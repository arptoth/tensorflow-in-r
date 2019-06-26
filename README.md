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


# References

RStudio Tensorflow documentation

 - https://tensorflow.rstudio.com/

Great introductions about Neural Networks

- Luis Serrano
    - https://www.youtube.com/watch?v=BR9h47Jtqyw
- 3Blue1Brown
    - https://www.youtube.com/watch?v=aircAruvnKk

TensorFlow Estimator example

- https://tensorflow.rstudio.com/tfestimators/

TensorFlow Core example

- https://tensorflow.rstudio.com/tensorflow/

Deep Learning Book in R

- https://www.amazon.com/Deep-Learning-R-Francois-Chollet/dp/161729554X

Siraj Raval YouTube Channel

- https://www.youtube.com/channel/UCWN3xxRkmTPmbKwht9FuE5A

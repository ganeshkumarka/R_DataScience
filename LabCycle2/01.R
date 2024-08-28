#Create a scatterplot of the Sepal.Length and Petal.Length variables in 
#the iris dataset using the plot function? Add appropriate labels and title 
#to the plot.  Save the plot as a high-resolution image file.


data(iris)

plot(iris$Sepal.Length, iris$Petal.Length, xlab = 'Sepal Length', ylab = 'Petal Length',
     main = 'Scatterplot of Sepal vs Petal Length', col = 'red')
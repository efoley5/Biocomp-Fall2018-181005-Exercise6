#Part I 
#Head Function
toplines <- function(file,number) {
  toplines=head(file, n = number)
  return(toplines)
}
#Part II 

iris=read.csv("iris.csv", stringsAsFactors = F)

#print the last two rows and columns 
iris[149:150, 4:5]

#get the number of observations of each species in the data set
library(plyr)
count(iris,'Species')

#get rows with Sepal.Width >3.5 
width=iris[iris$Sepal.Width>=3.5,]
width

#write the data for the species setosa to a comma delimited file named 'setosa.csv'
setosa_species=iris[iris$Species=='setosa',]
      #write csv file named setosa.csv
write.csv(setosa_species, file = "setosa.csv")

#calculate the mean, minimum and maximum of Petal.Length for observations in virginica 
virginica_data=iris[iris$Species=='virginica',3]
min(virginica_data)
max(virginica_data)
mean(virginica_data)

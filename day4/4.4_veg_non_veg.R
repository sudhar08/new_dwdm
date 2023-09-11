persons<-c('Gopu','Bapu','Baby','Gopal','Krishna','Jai','Dev','Malini','Hema','Anu')
vegetarian<-c('yes','yes','yes','no','yes','no','no','yes','yes','yes')
data<-data.frame(persons,vegetarian)

num_vegetarian <- sum(data$vegetarian == "yes")
num_non_vegetarian <- sum(data$vegetarian == "no")

print(paste("Number of Vegetarian Individuals:", num_vegetarian))
print(paste("Number of Non-Vegetarian Individuals:", num_non_vegetarian))
if (num_vegetarian > num_non_vegetarian) {
  print("Vegetarian individuals have a greater count.")
} else if (num_non_vegetarian > num_vegetarian) {
  print("Non-vegetarian individuals have a greater count.")
} else {
  print("The counts of vegetarian and non-vegetarian individuals are equal.")
}


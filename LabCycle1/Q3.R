#apple <- c('red','green',"yellow")
#print(apple)

#print(class(apple))
#x=1
#y=5

#mylist<- list(x,y)
#print(mylist)

#mylist[[1]]

# Initialize variables to store the total age and the number of valid records
total_age <- 0
valid_count <- 0

# Prompt the user to enter the number of students and ensure it's a positive integer
num_students <- as.integer(readline(prompt = "Enter the number of students: "))
while (is.na(num_students) || num_students <= 0) {k
  cat("Invalid number of students. Please enter a positive integer.\n")
  num_students <- as.integer(readline(prompt = "Enter the number of students: "))
}

# Loop to read records for each student
for (i in 1:num_students) {
  cat("Enter details for student", i, ":\n")
  
  # Read student name
  name <- readline(prompt = "Name: ")
  
  # Read and validate student age
  age <- as.integer(readline(prompt = "Age: "))
  while (is.na(age) || age <= 0) {
    cat("Invalid age. Please enter a positive integer.\n")
    age <- as.integer(readline(prompt = "Age: "))
  }
  
  # Read and validate student grade
  grade <- readline(prompt = "Grade (A, B, C, D, F): ")
  while (!grade %in% c("A", "B", "C", "D", "F")) {
    cat("Invalid grade. Please enter a valid letter grade (A, B, C, D, F).\n")
    grade <- readline(prompt = "Grade (A, B, C, D, F): ")
  }
  
  # Add the age to the total age and increment the valid record count
  total_age <- total_age + age
  valid_count <- valid_count + 1
}

# Calculate and display the average age of valid student records
if (valid_count > 0) {
  average_age <- total_age / valid_count
  cat("Average age of students with valid records:", average_age, "\n")
} else {
  cat("No valid student records entered.\n")
}

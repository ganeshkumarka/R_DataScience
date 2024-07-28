
total_age <- 0
valid_count <- 0

num_students <- as.integer(readline(prompt = "Enter the number of students: "))
while (is.na(num_students) || num_students <= 0) {k
  cat("Invalid number of students. Please enter a positive integer.\n")
  num_students <- as.integer(readline(prompt = "Enter the number of students: "))
}

for (i in 1:num_students) {
  cat("Enter details for student", i, ":\n")
  name <- readline(prompt = "Name: ")
  
  age <- as.integer(readline(prompt = "Age: "))
  while (is.na(age) || age <= 0) {
    cat("Invalid age. Please enter a positive integer.\n")
    age <- as.integer(readline(prompt = "Age: "))
  }

  grade <- readline(prompt = "Grade (A, B, C, D, F): ")
  while (!grade %in% c("A", "B", "C", "D", "F")) {
    cat("Invalid grade. Please enter a valid letter grade (A, B, C, D, F).\n")
    grade <- readline(prompt = "Grade (A, B, C, D, F): ")
  }

  total_age <- total_age + age
  valid_count <- valid_count + 1
}
if (valid_count > 0) {
  average_age <- total_age / valid_count
  cat("Average age of students with valid records:", average_age, "\n")
} else {
  cat("No valid student records entered.\n")
}

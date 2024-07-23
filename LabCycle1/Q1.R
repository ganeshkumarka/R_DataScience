# Paragraph of text
paragraph <- "This is a simple example paragraph to demonstrate the program. This program is written in R."

# Word to replace and replacement word
word_to_replace <- "program"
replacement_word <- "script"

# Split the text into words
words <- strsplit(paragraph, "\\s+")[[1]]

# a. Count the total number of words
total_words <- length(words)

# b. Calculate the average word length
word_lengths <- nchar(words)
average_word_length <- mean(word_lengths)

# c. Identify and print the longest word
longest_word <- words[which.max(word_lengths)]

# d. Replace all occurrences of a specific word with another word
modified_text <- gsub(word_to_replace, replacement_word, paragraph)

# Print the results
cat("Total number of words:", total_words, "\n")
cat("Average word length:", average_word_length, "\n")
cat("Longest word:", longest_word, "\n")
cat("Modified text:\n", modified_text, "\n")

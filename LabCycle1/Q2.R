caesar_cipher <- function(text, shift) {
  encrypted_text <- ""
  
  for (i in 1:nchar(text)) {
    char <- substr(text, i, i)
    
    if (grepl("[a-zA-Z]", char)) {
      if (grepl("[a-z]", char)) {
        base <- as.integer(charToRaw("a"))
      } else {
        base <- as.integer(charToRaw("A"))
      }
      
      shifted_char <- rawToChar(as.raw((as.integer(charToRaw(char)) - base + shift) %% 26 + base))
      encrypted_text <- paste0(encrypted_text, shifted_char)
    } else {
      encrypted_text <- paste0(encrypted_text, char)
    }
  }
  
  return(encrypted_text)
}

# Main function to run the Caesar cipher
main <- function() {
  sentence <- readline(prompt = "Enter a sentence to encrypt: ")
  shift <- as.integer(readline(prompt = "Enter the shift value: "))
  
  encrypted_sentence <- caesar_cipher(sentence, shift)
  cat("Encrypted sentence:", encrypted_sentence, "\n")
}

# Run the main function
main()


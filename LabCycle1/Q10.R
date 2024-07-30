reversal <- function(input){
  
  if (length(input) <= 1)
    return(input)
  
  return (c(reversal(input[-1]), input[1]))
}

main <- function(){
  
  input <- readline(prompt = "Enter space separated: ")
  input <- unlist(strsplit(input, " "))
  
  reversed <- reversal(input)
  
  cat("The reversed data is: ", paste(reversed, collapse = " "))
}

main()
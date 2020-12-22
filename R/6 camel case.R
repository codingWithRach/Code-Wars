# Complete the method/function so that it converts dash/underscore delimited words 
# into camel casing. The first word within the output should be capitalized only if 
# the original word was capitalized (known as Upper Camel Case, also often referred 
# to as Pascal case) e.g.
# to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"
# to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"
# to_camel_case("mixed-separator_example") # returns "mixedSeparatorExample"

to_camel_case <- function(text){
  camel_case <- ''
  delimiter <- FALSE
  for (char in strsplit(text, '')[[1]]) {
    if ( char %in% c('-','_') ) {
      delimiter <- TRUE
      char <- ''
    } else if ( delimiter == TRUE ) {
      char <- toupper(char)
      delimiter <- FALSE
    }
    camel_case <- paste(camel_case, char, sep='')
  }
  camel_case
}

to_camel_case('the-stealth-warrior')
to_camel_case("The_Stealth_Warrior")
to_camel_case("mixed-separator_example")


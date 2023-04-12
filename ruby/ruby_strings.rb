# STRING INTERPOLATION - seamlessly integrating synamic values into a string. eg use #{value}
puts "Name an animal"
animal = gets.chomp
puts "Name a noun"
noun = gets.chomp
p "The quick brown #{animal} jumped over the lazy #{noun}"
# NOTE: Using a single quote for the above line doesn't return the expected string
# single quotes return the line as it is

# STRING MANIPULATION
puts "Astros".upcase # prints the string in upper case
puts "Astros".downcase # lowercase
puts "Astros".swapcase # swap the case
puts "Astros".reverse # reverse the order of the letters

# METHOD CHAINING - join different methods together using a dot (.)
puts "Astros".reverse.upcase

# Methods that use a bang (!) eg my_method! and it is used to change the original value

# STRING SUBSTITUTION 
str = "The quick brown fox jumped over the quick dog"
str.sub "quick", "slow" # the first quotations has the value to be found and the second quote contains the replacement value
# .sub changes the first value found. to change all the relevant values then do a global substitution using .gsub
# str.gsub "quick", "slow"

# BECOMING A BLOCK HEAD 
# Blocks are tools that allow you to extend the functionality of a method

content = "# My Great Headline"
content.gsub(/^.*#.*/) { |heading| "<h1>#{heading[2..-1]}</h1>" }

# SPLIT, STRIP AND JOIN
# 1. Strip - cleans white spaces off a variable
str =  " The quick brown fox jumped over the quick dog "
p str.strip

# 2. Split - can split a sentance into an array of words
str2 =  "The quick brown fox jumped over the quick dog"
p str2.split.size # number of words
p str2.split(//) # number of letters in the array 

# 3. join - joins multiple characters to strings
str3 = "backwards am I"

# to reverse the words use the following algo pseudocode. 
# - split the string into words
# - Reverse the order of the words 
# - Merge all of the split words back into a single string ie 
p str3.split.reverse.join(' ')

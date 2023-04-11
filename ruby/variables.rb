# example of a ruby string
name = "Simon"

# arrays in ruby
address = ["123", "Anystreet", "Anytown", "TX"]

# to print in the ruby console (does not return a value when used. ie returns a value of nil)
puts "something to be printed here"

# or (this option returns a value)
p "whatever you need printed goes here"

# collecting input from user
puts "What is your name?"
name = gets 
# gets method prompts the user to enter a value
# notice how gets adds a line char '\n' to the variable thereby changing its state. 
# use .chomp to avoid that 

puts "Please enter your password: "
password = gets.chomp

if password == "mypass"
    true
else
    false
end
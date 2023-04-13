# CREATING METHODS
# begin with: def 
# methods's name follows. (small caps and snake_case) eg
def shopify_developer
end
# end - must end the methods 
# in between should go your methods functionality eg

def baseball_team_list
    p ["A's", "Angels", "Astros"]
end
# call the method to use it
# Return statements in ruby

def function_that_returns_some_value
    return p "I am the returned string from the function call"
end
function_that_returns_some_value

# ruby does not need to have the key word 'return' used. it returns the last line in the function.
# ruturn is used to end a method parmently eg 

def another_function 
    x = 10 
    return "It is true" if x == 10
    "lies"
end
p another_function

# Difference between class and instance methods
class Invoice
    # Class method
    def self.print_out
        "Printed out invoice"
    end 

    # Instance method
    def convert_to_pdf
        "converted to pdf"
    end
end

# Note the use of "self" keyword with class methods
# calling a class method. syntax = className.method eg 
Invoice.print_out

# to call for an instance method use instantiation to the class as follows 
i = Invoice.new
i.convert_to_pdf
# in short: Invoice.new.convert_to_pdf

# NOTE: A class method can be called in conjunction with the name of the class, whereas the instance method requires creating an instance to call it
 
# RUBY PROC MODULE- methods that can be stored inside variables eg 
full_name = Proc.new{ |first, last| first + " " + last } # this has 2 ways of calling it 
# 1 -  use brackets syntax followed by the args to be passed
p full_name["Simon", "Kevin"]

# 2 - use call mehtod to run the proc and pass in the args inside ()
p full_name.call("Simon", "kevin")

# Another way to work with props
all_names = Proc.new do |first| 
    first * 5
end 

# ruby Blocks (closure) groups statements together and ecapsulate the behavior
# Creating blocks, 2 ways
# 1 - Using culy braces {} use this when you want all the braces in the same line
add = Proc.new { |x, y| x + y }
add[3, 5]
p add

# 2 - Using do...end

divide = Proc.new do |i, j|
    j / i    
end 
divide[12, 3]
p divide

# Ruby Lambda
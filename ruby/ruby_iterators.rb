# WHILE loop
i = 0 

while i <= 10
    puts "Hey there"
    i += 1 # ++ don't work in ruby
end

# The EACH iterator
arr = [23, 43, 546, 63452, 6245, 54657]
arr.each do |i| # i is a block variable
    p i 
end 
# the above block could be shortened to "arr.each{ |i| p i}"

def new_max array_of_elements
    max_value = 0
    array_of_elements.each do |i| 
        if i > max_value
            max_value = i    
        end
end
    max_value
end 
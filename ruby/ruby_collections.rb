# ARRAYS
x = [12, 3, 454, 234, 342]
y = Array.new
y[0] = 543
y[10] = 11 #this adds the 11th value in the array
p y 
# iterate an array
y.each do |i|
    puts i
end

# Deleting items form an array
xy = ["asdf", 3, 4, 12, "asdf", "b", true, 34, 2, 4, 4, 4]
p x.length
xy.delete(4)
p xy
p x.length

# delete at a specific index
p xy.delete_at(2)

# another way to delete
batting_averages = [0.3, 0.18, 0.22, 0.25]
batting_averages.delete_if { |average| average <0.24}

# push and pop 
# push - add items to the array
teams = ["astros", "yankees", "rangers", "mets", "cardinals"]
teams.push("marlins") # added as the last value
teams.push("red sox", "blue jays")
p teams

# pop - Remove
z = teams.pop
p teams
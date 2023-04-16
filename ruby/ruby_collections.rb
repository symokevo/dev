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
p teams # removes the last element

# Hash tutorial
# Hashes - key/value pair collections 
positions = {
    first_base: "Simon kevin",
    second_base: "Jose Altuve",
    short_stop: "Carlos Correa"
}
# another way of using hashes
positions1 = {"first_base" => "simon kevin", "second_base" => "david berrings", "short_stop" => "augustine junior"}
# or another way
positions2 = { :first_base =>"simon kevin", :second_base =>"david berrings", :short_stop =>"maxwel ochi"} 

# select an item from the hash - use key
p positions[:second_base]

# deleting elements from a hash
people = { simon: 25, david: 27, junior: 21, maxy: 24}
p people[:maxy]
p people.delete(:maxy)
p people

# iterating over a hash for a key or value
# to only grab the keys:
people.each_key do |key|
    puts key
end

# to only grab the values: 
people.each_value do |value|
    puts value
end

# Hash methods
# adding elements
people[:mike] = 17
p people

# SWAPPING keys and values
# 1 - iterate each pair, store in a variable, swap them and update 
# 2 - use ruby invert 
people_2 = people.invert
p people_2

# marging hashes
people.merge(people_2)

# converting a hash into an array
p Array(people)
p people.to_a

# listing all keys
key_list = people.keys 
p key_list

# listing all values
value_list = people.values
p value_list

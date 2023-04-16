x = 10 
y = 5

if x == y
    puts "x is the same as y"
else 
    puts "x and y are not the same"
end

# unless conditional: opposite of if
# players = ["simon", "kevin", "rabbs"]
players = []
# print the values from the array only if the array is not empty
unless players.empty?
    puts "I'm inside the unless statement"
    players.each{ |player| puts player}
end

# same as: players.each{ |player| puts player } unless players.empty?
# or: players.each{ |player| puts player } if !players.empty?

# NESTED IF...ELSE conditionals
i = 10
j = 100
k = 10

if i == j
    puts "i is equal to k"
elsif i >= k 
    puts "i is greater than k"
else 
    puts "something else"
end

# compound coditional
if i == j
    if i == k
        puts "equal to everything"
    end
end

if i == j && i == k 
    puts "from the if statement"
end

if i == j || i == k 
    puts "from the if statement"
end

# compunded compound coditionals
if (i == 10 && j == z) || x == y 
    puts "from the f statement"
end

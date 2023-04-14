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

# FOR...IN LOOPS
for i in 0...42 # i is an iterator variable
    p i   
end

# Looping over a hash (key/value-based ds)
# Nested iterator 
teams = {
    "Houston Astros" => {
        "first base" => "AJ Reed",
        "Second base" => "Jose Altuve",
        "shortstop" => "Carlos Correa"
    },
    "Texts Rangers" => {
        "first base" => "John robin",
        "second base" => "Kevin rabbs",
        "shortstop" => "Simon Kevin"
    }
}

teams.each do |team|
    p team
end 

teams.each do |team, players|
    puts team
    players.each do |position, player|
        p "#{player} starts at #{position}"
    end
end

# SELECT iterator
(1...10).to_a.select do |x|
    x.even?
end
# same as the below code
(1...10).to_a.select { |x| x.even? }
# or 
(1...10).to_a.select(&:even?) # & - shortcut for avoiding block variable

# below code only shows >5 letterd words
# arr = %w(The quick brown fox jumped over the lazy dog) # %w is used to convert the sentence to an array of words
# arr.select { |x| x.length> 5 }

%x(a b c d e f g).select { |v| v =~ /[aeiou] }

# passing multiple conditions to select
arr = (1...100)
arr.select do |e|
    e % 3 == 0 && e % 5 == 0
end

# MAP METHOD
# ["1", "23.0", "0", "4"].map {|x| x.to_i}
# ["1", "23.0", "0", "4"].map(&:to_i)

# converting a, b, c, d to aa, bb, cc, dd
("a"..."g").map { |i| i * 2 }
# converting an array of numbers into a hash
Hash[[1, 2.1, 3.33, 0.9].map {|x| [x, x.to_i]}]

# Convert a sentence to an array of words and creat a hash that takes each word  as the key and their lengths as value
Hash[ %w(A dynamic open source programming language).map { |x| [x, x.length]}]

# values set foo and bar with keys a and b respectively are combined into a safe url as follows
{:a =>"foo", :b =>"bar"}.map { |a,b| "#{a}=#{b}"}.join('&')

# method that generates a flexible baseball lineup using map
players = ["simon", "kevin", "rabbs"]

def lineup_generator(list, &block)
    list.map.with_index(1) do |player, index|
        yield(index, player)
    end
end

# Summing values in an array using the inject method
# manual way 
total = 0
[3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].each do |i|
    total += i
end
puts total
# or simpy:
[3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].inject(&:+)
# you could also multiply
[3, 2, 4, 53, 5, 3, 23343, 4342, 12, 3].inject(&:*)

# NOTE: ruby treats + as a method unlike an operator
# creating a histogram with inject
def histogram nums 
    nums.inject(Hash.new(0)) so |hash, e|
        hash[e] += 1
        hash
    end
end

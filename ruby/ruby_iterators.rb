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
arr = %w(The quick brown fox jumped over the lazy dog) # %w is used to convert the sentence to an array of words
arr.select { |x| x.length> 5}
%x(a b c d e f g).select { |v| v =~ /[aeiou] }

# passing multiple conditions to select
arr = (1...100)
arr.select do |e|
    e % 3 == 0 && e % 5 == 0
end


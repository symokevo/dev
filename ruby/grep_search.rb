# how to use grep in ruby 
# "rake routes" command gets list of all routes in a ror application
# "rake routes | grep posts" - searches for posts keys word 

arr = [1, 3, 2, 12, 1, 2, 3]
p arr.grep(1)
p arr.grep(100) # returns empty array

# how to use grep instead of the select and map methods
arr = ['hey.rb', 'there.rb', 'index.html']
p arr.select { |x| x=~ /\.rb/ }.map{ |x| x[0..-4]} # using select
arr.grep(/(.*)\.rb/) {$1}
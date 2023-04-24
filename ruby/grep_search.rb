# how to use grep in ruby 
# "rake routes" command gets list of all routes in a ror application
# "rake routes | grep posts" - searches for posts keys word 

arr = [1, 3, 2, 12, 1, 2, 3]
p arr.grep(1)
p arr.grep(100) # returns empty array

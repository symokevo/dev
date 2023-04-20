# creating a file
File.open("ruby-files/teams.txt", 'w+') { 
    |f| f.write("Twins, Astros, Mets, Yankees")
}

=begin 
    r - reading
    a - appending to a file
    w+ - reading and writing to a file
    a+ - opening a file for reading and appending
    r+ - opening a file for updating and including writing and reading
=end 

# The above code could also be achieved by the following
file_to_save = File.new("ruby-files/otherteams.txt", 'w+')
file_to_save.puts("A's, Diamongbacks, Mariners, Marlins")
file_to_save.close
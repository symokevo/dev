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

# Reading files into a program using the File class
teams = File.read("ruby-files/teams.txt")
puts teams.split
p teams.split(', ')

# reading form multiple files at the same time
teams_A = File.read("ruby-files/teams.txt")
teams_B = File.read("ruby-files/otherteams.txt")

# combine the arrays into one
main_team = teams_A.split(', ') + teams_B.split(', ')

# convert the main_team to uppercase
main_team.each { |team| p team.upcase }

# Deleting a file
File.open("ruby-files/to_be_deleted.txt", 'w+') { 
    |f| f.write("Twins, Astros, Mets, Yankees")
}

File.delete("ruby-files/to_be_deleted.txt")


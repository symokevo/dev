# ruby var types: 1. local 2. global 3. instance 4. constants 5. class variables

# LOCAL VARIABLES - limited to the area where they are declared eg 
10.times do
    i = 10
    p i
end
# declares i var and gets it printed 10x in a loop

# GLOBAL VARIABLES - denoted by $ preciding the variable- it is available throughout the file.
10.times do 
    $j = 9
end 
p $j

# INSTANCE VARIABLES - Available at a particular instance. used with @ symbol
# eg @batting_average = 400

# CONSTANTS - All caps by convention. its value changes and goes with the last value assigned.

# CLASS VARIABLES availabe within a particular class and are denoted by @@
# for example @@teams = ["A's", "Tigers"]
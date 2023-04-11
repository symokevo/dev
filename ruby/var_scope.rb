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
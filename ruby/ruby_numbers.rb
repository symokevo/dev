# use double asterix (**) for Exponentiation
# The order of operations does matter for the compiler
order_of_operations = 5 + 15 * 20 - 2 / 6 ** 3 - (3 + 1)
p order_of_operations
# for the above arithmetic operation, here is the order: PEMDAS
# Parenthesis(), 
# Exponentiation **, 
# Multiplication *, 
# Division /, 
# Addition +, 
# Subtraction -

# Why 2 / 216 returns 0 in ruby: this returns a whole number which is rounded off from the original value.
# To avoid such issues use 2.0 / 216 instead

# Number-based data types in Ruby
# Integer 2, 3, 4
# Float 2.4
# Decimal 2.4321334

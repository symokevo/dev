def say_hello(message)
    @hello = "Hello"
    puts @hello + " " + message
end 

@hello = "Hi!"
say_hello("world")
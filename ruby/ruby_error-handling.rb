# handling zeroDivisionError 

begin
    puts 8/0
rescue => exception
    puts "Rescued the error"
end

# Or even better..
begin
    puts 8/0
rescue ZeroDivisionError => e 
    puts "Error occurred: #{e}"
end 

begin
    puts nill + 10
rescue StandardError => e 
    puts "Error occurred: #{e}"
end 



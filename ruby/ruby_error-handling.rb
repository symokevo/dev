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

# Custom error logger
def error_logger (e)
    File.open('ruby-files/error_log.txt', 'a') do |file|
        file.puts e 
    end
end 

# the main code
begin
    puts nil / 10
rescue StandardError => e
    error_logger("Error: #{e} at #{Time.now}")    
end


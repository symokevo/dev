# < this denotes inheritance-
# Setters, getters and methods
# eg:

class ApiConnector
    # Class body content here
    # attr_accessor :title, :description, :url

    def initialize(title:, description:, url: 'google.com')
        @title = title 
        @description = description
        @url = url
    end

    def test_method
        puts "testing class call"
    end
end 

class SmsConnector < ApiConnector
    def send_sms
        puts "Sending sms message with the #{@title} and #{@description}"
    end
end

class MailerConnector < ApiConnector
    def send_sms
        puts "Sending sms message..."
    end
end

class PhoneConnector < ApiConnector
    def send_sms
        puts "Sending sms message..."
    end
end

class XyzConnector < ApiConnector
    def send_sms
        puts "Sending sms message..."
    end
end

# api = ApiConnector.new # instantiation

sms = SmsConnector.new(title: "Hi! there", description: "I'm in an sms message")
sms.send_sms
# api.url = "https://www.github.com"
# puts api.url
# api.test_method


class TestClass
    attr_accessor :name, :age, :profession
    def method_tester
        puts "This method works from the class"
    end
end

instantiator = TestClass.new
instantiator.name = "simon"
instantiator.age = 25
instantiator.profession = "software developer"
p instantiator.method_tester
puts "I am #{instantiator.name}, aged #{instantiator.age} and a #{instantiator.profession}"

# Initializer method in Ruby (constructor in java)

class ApiConnectorB
    def initialize(title, description, url)
        @title = title 
        @description = description
        @url = url
    end

    def testing_initializer
        puts @title
        puts @description
        puts @url
    end
end

api2 = ApiConnectorB.new("My title", "My cool description", "google.com")
api2.testing_initializer

# OOP rule 
# a class should only serve one role 
# private and public methods in ruby

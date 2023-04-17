# < this denotes inheritance-
# Setters, getters and methods
# eg:

class ApiConnector
    # Class body content here
    attr_accessor :title, :description, :url

    def test_method
        puts "testing class call"
    end
end 

api = ApiConnector.new # instantiation
api.url = "https://www.github.com"
puts api.url
api.test_method


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


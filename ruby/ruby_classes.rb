class ApiConnector
    # Class body content here
    # attr_accessor :title, :description, :url

    def initialize(title:, description: 'just some random text', url: 'google.com')
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
        # `curl -X POST -d "notification[title]=#{@title}" -d
        # "notification[url] =http://edutechional-resty.hrokuapp.com/posts/1"
        # "#{@url}"`
    end
end

sms = SmsConnector.new(title: "Hey there!", url:
"http://edutechional-smsy.herokuapp.com/notifications")
sms.send_sms

# NOTE: THE ABOVE CLASS DOES NOT WORK - the api class was created in a different class
# private methods can be called in ruby. but they should not be called

# private method example

# class InentoriesController < ApplicationController 
#     # hide public methods
#     private 
#         def set_inventory
#             @inventory = inventory.find(params[:id])
#         end

#         def inventory_params 
#             params.require(:inventory).permit(:title, :qty, :ticket_id)
#         end
# end

# RULE: create private metods when they should not by used outside the class

# Polymorphism and usage of super 
# - occurs when a class that inherits from a parent class overrides a behaviour provided by the parent class
# -eg 
class ApiConnectorC 
    def initialize(title:, description:, url: 'zimastack.com')
        @title = title
        @description = description
        @url = url
    end 

    def api_logger 
        puts "API connector starting ..."
    end 
end 

class PhoneConnector < ApiConnectorC
    # the body of the class here 
    def api_logger
        super
            puts "Phone call Api connection starting..."
    end
end 
phone = PhoneConnector.new(title: 'My Title', description: 'some content here')
phone.api_logger


# SOLID OOP DEVELOPMENT 

=begin 
single responsibility principle
open/closed principle   
liskov substitution principle
interface segregation principle
dependency inversion principle
=end

# 1. Single responsibility principle (SRP) -  Each class and module focus on a single task eg 
# achieved by writing low coupled classes
class Invoice
    def initialize(customer:, state:, total:)
        @customer = customer
        @state = state
        @total = total
    end

    def details 
        "Customer: #{@customer}, Total: #{@total}"
    end
end 

class Sales_tax
    def initialize(state:)
        @state = state 
    end 

    def sales_tax
        case @state
        when 'AZ' then 5.5
        when 'TX' then 3.2
        when 'CA' then 8.7
        end
    end 
end 

class Mailer
    def self.email(content)
        puts "Emailing..."
        puts content
    end 
end 

invoice = Invoice.new(customer: "Google", state: "AZ", total: 100)
tax = SalesTax.new(state: 'CA')
puts invoice.sales_tax
Mailer.email(invoice.details)


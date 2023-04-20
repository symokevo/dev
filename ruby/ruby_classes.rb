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

class SalesTax
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
puts tax.sales_tax
Mailer.email(invoice.details)

# 2. The Open/Closed principle - software elements (classes, modules, functions) should be open 
#    for extension but closed for modification. eg
class OrderReport
    def initialize(customer:, total:)
        @customer = customer
        @total = total
    end 
end 

class Invoice2 < OrderReport
    def print_out
        puts "Invoice"
        puts @customer
        puts @total
    end 
end 

class BillingOfLading < OrderReport
    def initialize(address:, **args)
        super(**args)
        @address = address
    end

    def print_out
        puts "BOL"
        puts @customer
        puts "Shipping Label..."
        puts @address
    end
end

invoice2 = Invoice2.new(customer: "Google", total: 100)
bill_of_lading = BillingOfLading.new(customer: "Yahoo", total: 200, address: "123 Any street")

invoice2.print_out
bill_of_lading.print_out

# 3. The Liskov subtitution Principle
=begin
    - Ability to replace any instance of a parent class with an instance of its child classes 
    without a negative side effect. for example       
=end

require 'date'
require 'ostruct'

class User 
    attr_accessor :settings, :email
    
    def initialize(email:)
        @email = email 
    end

    def set_settings(level:, status:, signed_in:)
        @settings = OpenStruct.new(
            level: level,
            status: status,
            signed_in: signed_in
        )
    end 

    def get_settings
        @settings
    end
end 

class AdminUser < User 
end

user = User.new(email: "user@test.com")
user.settings = {
    level: "Low Security",
    status: "Live",
    signed_in: Date.today
}

admin = AdminUser.new(email: "admin@test.com")
admin.settings = {
    level: "Editor",
    status: "VIP",
    signed_in: Date.today
}

@user_database = [user, admin]

def signed_in_today?
    @user_database.each do |user|
        if user.settings[:signed_in] == Date.today
            puts "#{user.email} signed in today"
        end 
    end
end

signed_in_today?

# 4. Interface segregation principle
=begin
    - code should not be forced to depend on methods that it doesn't use. for example..
=end 
require 'forwardable'
class Blog
    def edit_post
        puts "Post edited"
    end

    def delete_post 
        puts "Post removed"
    end

    def create_post
        puts "Post created"
    end 
end

class Moderator 
    extend Forwardable
    def_delegators @blog, :edit_post

    def initialize(blog)
        @blog = blog
    end 
end 

moderator = Moderator.new(Blog.new)
moderator.edit_post
moderator.delete_post


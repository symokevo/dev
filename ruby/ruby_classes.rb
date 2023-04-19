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
        `curl -X POST -d "notification[title]=#{@title}" -d
        "notification[url] =http://edutechional-resty.hrokuapp.com/posts/1"
        "#{@url}"`
    end
end

sms = SmsConnector.new(title: "Hey there!", url:
"http://edutechional-smsy.herokuapp.com/notifications")
sms.send_sms

# NOTE: THE ABOVE CLASS DOES NOT WORK - the api class was created in a different class
# private methods can be called in ruby. but they should not be called

# private method example

class InentoriesController < ApplicationController 
    # hide public methods
    private 
        def set_inventory
            @inventory = inventory.find(params[:id])
        end

        def inventory_params 
            params.require(:inventory).permit(:title, :qty, :ticket_id)
        end
end

# RULE: create private metods when they should not by used outside the class
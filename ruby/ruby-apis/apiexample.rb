# how to work with apis in ruby
require 'rubygems'
require 'httparty'

class EdutechionalResty
  include HTTParty
  base_url = "http://edutechional-resty.herokuapp.com" # this base url seems to be down

  def posts
    self.class.get('/posts.json')
  end
end

class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @options = { query: {site: service, page: page}}
  end

  def questions
    self.class.get('/2.2/questions', @options)
  end

  def users
    self.class.get('/2/users', @options)
  end
end

api = EdutechionalResty.new
# puts api.posts

# How to use the httparty ruby gem
response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
# puts response.body
puts response.code
puts response.message
puts response.headers.inspect

# How to create a custom api connector in ruby
stack_exchange = StackExchange.new('stackoverflow', 1)
puts stack_exchage.questions
puts stack_exchage.users


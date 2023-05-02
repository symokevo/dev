# parse api in ruby
require 'rubygems'
require 'httparty'

class Resty
  include HTTParty
  base_uri 'http://edutechional-resty.heroku.com'

  def posts
    self.class.get('/posts.json')
  end
end
resty = Resty.new
resty_posts = resty.posts

resty_posts.each do |post|
  puts "Titles: #{post['title']}"
end

# puts resty.posts

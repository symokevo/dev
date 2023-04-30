# provides the ability to open up classes and override existing methods to assign custom behaviour to applications
class Baseball
end

class Baseball
  def swing
    "Homerun"
  end
end

p Baseball.new.swing # prints homerun

class Baseball
  def swing
    "Strike"
  end
end

p Baseball.new.swing

# How to use metaprogramming for opening and custmizing the String class
class String
  def censor(bad_word)
    self.gsub! "#{bad_word}", "CENSORED"
  end
end

p "The bunny was in trouble with the king's bunny".censor('bunny')
p "The bunny was in trouble with the king's bunny".size
# create a more explicit method name

class String

  def num_of_chars
    size
  end
end

p "The bunny was in trouble with the king's bunny".num_of_chars

# Implementing the metaprogramming within Rails via "find_by" method

# utilizing metaprogramming with method_missing to create methods on the fly
require 'ostruct'

class Author
  attr_accessor :first_name, :last_name, :genre

  def author
    OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
    # the above functionality mimics the behavior of a database
  end

  def method_missing(method_name, *arguments, &block)
    if method_name.to_s =~ /author_(.*)/
      author.send($1, *arguments, &block)
    else
      super
    end
  end
end

author = Author.new
author.first_name = "Cal"
author.last_name = "Newpot"
author.genre = "Computer science"
# test the functionality
p author.first_name
p author.author_genre
# note: there is not method called "author_genre" however when you execute the file there is no error
# this is because it was created on the fly dynamically.

p author.respond_to?(:inspect)
# respond_to? is used to check if a method exists in the codebase.
p author.respond_to?(:author_genre)

=begin
NOTE: This is the best practice to override the respond_to? method
  ****************************************************************
  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('author_' || super
  end
  ****************************************************************
=end




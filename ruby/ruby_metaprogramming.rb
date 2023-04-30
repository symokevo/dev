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


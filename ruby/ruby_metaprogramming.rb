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


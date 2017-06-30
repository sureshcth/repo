class Person
  attr_accessor :name, :age
  def initialize(name)
    @name = name
  end
end

david = Person.new("David")
david.age = 49

p david.instance_variables         #A


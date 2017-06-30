module Secretive
  def name
    "[not available]"
  end
end

class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"
matz = Person.new
matz.name = "Matz"
ruby = Person.new
ruby.name = "Ruby"

david.extend(Secretive)                 #1
ruby.extend(Secretive)


puts "We've got one person named #{matz.name}, " +
     "one named #{david.name}, "                 +
     "and one named #{ruby.name}."


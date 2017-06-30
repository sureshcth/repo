class Person
  attr_accessor :name                     #1
  def self.to_proc                        #2
    Proc.new {|person| person.name }
  end
end

d = Person.new                            #3
d.name = "David"
m = Person.new
m.name = "Matz"

puts [d,m].map(&Person)                   #4


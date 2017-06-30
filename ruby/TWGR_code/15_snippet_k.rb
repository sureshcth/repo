class Person
  attr_reader :name
  def name=(name)                        #A
    @name = name
    normalize_name                       #B
  end

  private
  def normalize_name
    name.gsub!(/[^-a-z'.\s]/i, "")       #C
  end
end


david = Person.new
david.name = "123David!! Bl%a9ck"
raise "Problem" unless david.name == "David Black"  #D
puts "Name has been normalized."

p david.private_methods.sort.grep(/normal/)         #E


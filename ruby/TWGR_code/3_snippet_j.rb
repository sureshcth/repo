class Person
  def species             #1
    "Homo sapiens"
  end
end

class Rubyist < Person    #2
end

david = Rubyist.new
puts david.species    #A


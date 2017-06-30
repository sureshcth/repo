class Object
  def singleton_class
    class << self
      self
    end
  end
end

class Person                    #1
end

david = Person.new              #2
def david.talk                  #3
  puts "Hi"
end

dsc = david.singleton_class     #4
puts "Yes, we have a talk method!" if dsc.instance_methods.include?(:talk)   #5


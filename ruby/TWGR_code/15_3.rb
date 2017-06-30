module M
  def self.included(c)                       #1
    puts "#{self} included by #{c}."
  end

  def self.extended(obj)                     #2
    puts "#{self} extended by #{obj}."
  end
end

obj = Object.new
puts "Including M in object's singleton class:"
class << obj                                 #3
  include M
end

puts

obj = Object.new
puts "Extending object with M:"              #4
obj.extend(M)




require "stacklike"
class Stack
  include Stacklike                                             #1
end

s = Stack.new                                                   #1

s.add_to_stack("item one")                                      #2
s.add_to_stack("item two")                                      #2
s.add_to_stack("item three")                                    #2

puts "Objects currently on the stack:"
puts s.stack

taken = s.take_from_stack                                       #3
puts "Removed this object:"
puts taken

puts "Now on stack:"
puts s.stack

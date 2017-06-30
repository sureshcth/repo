t = Thread.new do
  puts "[Starting thread]"              #A
  Thread.stop
  puts "[Resuming thread]"
end

puts "Status of thread: #{t.status}"     #B
puts "Is thread stopped? #{t.stop?}"     #C
puts "Is thread alive? #{t.alive?}"      #D

puts
puts "Waking up thread and joining it..."
t.wakeup
t.join                                    #E
puts

puts "Is thread alive? #{t.alive?}"             #F   
puts "Inspect string for thread: #{t.inspect}"  #G


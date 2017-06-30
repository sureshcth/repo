def demo_of_yield
  puts "Executing the method body..."                               #1
  puts "About to yield control to the block..."
  yield                                                             #2
  puts "Back from the block—finished!"
#3
end

demo_of_yield { puts "> Control has been passed to the block!" } 

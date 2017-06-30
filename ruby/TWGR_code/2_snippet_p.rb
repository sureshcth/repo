def say_goodbye
  x = "Goodbye"      #1
  puts x
end

def start_here
  x = "Hello"        #2
  puts x
  say_goodbye        #3
  puts "Let's check whether x remained the same:"
  puts x             #4
end

start_here           


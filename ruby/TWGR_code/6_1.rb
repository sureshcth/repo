print "Exit the program? (yes or no): "
answer = gets.chomp
case answer                                                    #1
when "yes"                                                     #2
  puts "Good-bye!"
  exit
when "no"
  puts "OK, we'll continue"
else                                                            #3
  puts "That's an unknown answer -- assuming you meant 'no'"
end                   

puts "Continuing with program...."
# etc.

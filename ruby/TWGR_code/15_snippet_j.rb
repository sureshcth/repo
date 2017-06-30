string = "Test string"
methods = string.methods
bangs = string.methods.grep(/!/)                                #1

unmatched = bangs.reject {|b| methods.include?(b.chomp("!")) }  #2

if unmatched.empty?                                             #3
  puts "All bang methods are matched by non-bang methods."
else
  puts "Some bang methods have no non-bang partner: "
  puts unmatched
end


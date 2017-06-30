array = ["ruby", "diamond", "emerald"]
hash = { 0 => "ruby", 1 => "diamond", 2 => "emerald" }

puts array[0]    # ruby
puts hash[0]     # ruby

hash = { "red" => "ruby", "white" => "diamond", "green" => "emerald" }
hash.each_with_index {|(key,value),i| puts "Pair #{i} is: #{key}/#{value}" }


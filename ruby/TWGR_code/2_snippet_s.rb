def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"
change_string(s)
puts s

s = "Original string content!"
change_string(s.dup)
puts s

s = "Original string content!"
s.freeze
change_string(s)


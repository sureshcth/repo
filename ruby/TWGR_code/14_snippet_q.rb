/(abc)/.match("abc")                 #1

t = Thread.new do
  /(def)/.match("def")               #2
  puts "$1 in thread: #{$1}"         #3
end.join

puts "$1 outside thread: #{$1}"      #4


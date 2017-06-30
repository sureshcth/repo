record = File.open("/tmp/record", "w")   #1

$old_stdout = $stdout                    #2
$stdout = record                         #3
$stderr = $stdout

puts "This is a record"                  #4
z = 10/0                                 #5



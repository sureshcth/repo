require 'open3'

stdin, stdout, stderr = Open3.popen3("cat")

t = Thread.new do                        #1
  loop { stdin.puts gets }
end

u = Thread.new do                        #2
  n = 0
  str = ""
  loop do                                #3
     str << stdout.gets
     n += 1
     if n % 3 == 0                       #4
       puts "--------\n"
       puts str
       puts "--------\n"
       str = ""
     end
  end
end

t.join                                   #5
u.join


require 'socket'
s = TCPServer.new(3939)
while (conn = s.accept)                        #1
  Thread.new(conn) do |c|                      #2
    c.print "Hi. What's your name? "
    name = c.gets.chomp                        #3
    c.puts "Hi, #{name}. Here's the date."
    c.puts `date`
    c.close
  end
end


require 'socket'                                   #1

def welcome(chatter)                               #2
  chatter.print "Welcome! Please enter your name: "
  chatter.readline.chomp
end

def broadcast(message, chatters)                   #3
  chatters.each do |chatter|
    chatter.puts message
  end
end

s = TCPServer.new(3939)                            #4

chatters = []

while (chatter = s.accept)                         #5
  Thread.new(chatter) do |c|
    name = welcome(chatter)                        #6
    broadcast("#{name} has joined", chatters)      #7
    chatters << chatter                            #8
  begin                                            #9
    loop do
      line = c.readline                            #10
      broadcast("#{name}: #{line}", chatters)      #11
    end
  rescue EOFError                                  #12
    c.close
    chatters.delete(c)                             #13
    broadcast("#{name} has left", chatters)
  end
  end
end


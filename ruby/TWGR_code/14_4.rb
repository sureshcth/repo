require 'socket'
require 'rps'

s = TCPServer.new(3939)                          #1

threads = []                                     #2

2.times do |n|
  conn = s.accept                                #3
  threads << Thread.new(c) do |c|                #4
    Thread.current[:number] = n + 1              #5
    Thread.current[:player] = c
    c.puts "Welcome, player #{n+1}!"             #6
    c.print "Your move? (rock, paper, scissors) "
    Thread.current[:move] = c.gets.chomp
    c.puts "Thanks... hang on."
  end
end

a,b = threads                                   #7
a.join
b.join

rps1, rps2 = Games::RPS.new(a[:move]), Games::RPS.new(b[:move])  #8

winner = rps1.play(rps2)                                         #9
if winner                                                        #10
  result = winner.move
else
  result = "TIE!"
end

threads.each do |t|                                              #11
  t[:player].puts "The winner is #{result}!"
end


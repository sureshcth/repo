# Add this method to the Ticket class:

def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

# And then run this code:

th = Ticket.new("Town Hall","11/12/13")
cc = Ticket.new("Convention Center","12/13/14/")
fg = Ticket.new("Fairgrounds", "13/14/15/")

th.price = 12.55
cc.price = 10.00
fg.price = 18.00

highest = Ticket.most_expensive(th,cc,fg)

puts "The highest-priced ticket is the one for #{highest.venue}."


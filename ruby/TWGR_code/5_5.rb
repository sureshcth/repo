class C
  def x(value_for_a,recurse=false)
    print "Here's the inspect-string for 'self':"
    p self
    a = value_for_a
    puts "And here's a:"
    puts a
    if recurse
      puts "Recursing by calling myself..."
      x("Second value for a")
      puts "Back after recursion; here's a:"
      puts a
    end
  end
end

c = C.new
c.x("First value for a", true)

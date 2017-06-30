class C
  def singleton_method_added(m)                      #1
    puts "Singleton method #{m} was just defined."
  end
end

c = C.new

def c.a_singleton_method                             #2
end


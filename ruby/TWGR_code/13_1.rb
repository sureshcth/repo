class C
  def talk
    puts "Hi from original class!"
  end
end

module M
  def talk
    puts "Hello from module!"
  end
end

c = C.new
c.talk                                                                   #1
class << c
  include M                                                              #2
end
c.talk                                                                   


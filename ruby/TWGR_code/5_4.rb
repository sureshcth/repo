class C
  a = 5
  module M
    a = 4
    module N
      a = 3
      class D
        a = 2
        def show_a
          a = 1
          puts a
        end
        puts a       #1
      end
      puts a         #2
    end
    puts a           #3
  end
  puts a             #4
end

d = C::M::N::D.new
d.show_a 

require 'callertools'

class MicroTest
  def self.inherited(c)
    c.class_eval do
      def self.method_added(m)
        if m.to_s =~ /^test/                         #1
          obj = self.new                             #2
          if self.instance_methods.include?(:setup)  #3
            obj.setup
          end
          obj.send(m)
        end
      end
    end
  end

  def assert(assertion)                              #4
    if assertion
      puts "Assertion passed"
      true
    else
      puts "Assertion failed:"
      stack = CallerTools::Stack.new                   #5
      failure = stack.find {|call| call.meth !~ /assert/ } #6
      puts failure
      false
    end
  end

  def assert_equal(expected, actual)                 #7
    result assert(expected == actual)
    puts "(#{actual} is not #{expected})" unless result   #8
    result
  end
end


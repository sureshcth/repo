  class Stack
    def initialize
      stack = caller                              #1
      stack.shift
      @backtrace = stack.map do |call|            #2
        Call.new(call)                            #3
      end
    end

    def report
      @backtrace.map do |call|
        call.to_s                                #5
      end
    end

    def find(&block)                              #6
      @backtrace.find(&block)
    end
  end
end


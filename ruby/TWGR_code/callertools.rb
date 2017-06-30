module CallerTools

  class Call
    CALL_RE = /(.*):(\d+):in `(.*)'/                             #1
    attr_reader :program, :line, :meth
    def initialize(string)
      @program, @line, @meth = CALL_RE.match(string).captures    #2
    end

    def to_s
      "%30s%5s%15s" % [program, line, meth]                      #3
    end
  end

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


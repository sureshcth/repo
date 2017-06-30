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

# CONTINUES IN 15_6.rb

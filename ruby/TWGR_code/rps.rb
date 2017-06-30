module Games
  class RPS
    include Comparable                    #1

    WINS = [%w{ rock scissors },          #2
            %w{ scissors paper }, 
            %w{ paper rock }]

    attr_accessor :move                 #3

    def initialize(move)                #4
      @move = move.to_s
    end
    
    def play(other)                     #5
      if self > other
        self
      elsif other > self
        other
      else
        false
      end
    end

    def <=>(other)                       #6
      if move == other.move
        0
      elsif WINS.include?([move, other.move])
        1
      elsif WINS.include?([other.move, move])
        -1
      else
        raise ArgumentError, "Something's wrong"
      end
    end
  end
end

if __FILE__ == $0

  require 'test/unit'

  class RPSTest < Test::Unit::TestCase

    include Games
    def test_all
      a,b = RPS.new("rock"), RPS.new("scissors")
      assert a > b
      a,b = RPS.new("scissors"), RPS.new("paper")
      assert a > b
      a,b = RPS.new("paper"), RPS.new("rock")
      assert a > b
      a,b = RPS.new("paper"), RPS.new("paper")
      assert a == b
      a,b = RPS.new("paper"), RPS.new("roc")
      assert_raises(ArgumentError) { a > b }
    end
  end
end

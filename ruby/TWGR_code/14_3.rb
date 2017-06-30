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
    
    def <=>(other)                       #5
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

    def play(other)                     #6
      if self > other
        self
      elsif other > self
        other
      else
        false
      end
    end
  end
end


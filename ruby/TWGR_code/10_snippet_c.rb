class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }   #1
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }

  class Deck
    attr_reader :cards                         #2

    def initialize(n=1)                        #3
      @cards = []
      SUITS.cycle(n) do |s|                    #4
        RANKS.cycle(1) do |r|                  #5
          @cards << "#{r} of #{s}"             #6
        end
      end
    end
  end
end


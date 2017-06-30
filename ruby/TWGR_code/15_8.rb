require 'test/unit'                         #1
require 'cards'

class CardTest < Test::Unit::TestCase       #2
  def setup                                 #3
    @deck = PlayingCards::Deck.new
  end

  def test_deal_one                         #4
    @deck.deal
    assert_equal(51, @deck.size)            #5
  end

  def test_deal_many                        #6
    @deck.deal(5)
    assert_equal(47, @deck.size)
  end
end


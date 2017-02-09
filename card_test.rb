require 'minitest/autorun'
require_relative 'card'


class CardTest < MiniTest::Test



  def test_the_card_has_suit_and_face
    card = Card.new(9, "Hearts")
    assert_equal "8", card.face
    assert_equal "Diamonds", card.suit
  end

  def test_card_values
    card = Card.new("J", "Clubs")
    assert_equal 11, card.value
  end

  def test_cards_can_be_compared
    card1 = Card.new("Q", "Clubs")
    card2 = Card.new("J", "Diamonds")
    assert card1 > card2
    assert card2 < card1
  end

  def test_cands_are_equal
    card1 = Card.new("Q", "Hearts")
    card2 = Card.new("Q", "Spades")
    assert_equal card1.value, card2.value  
  end

end

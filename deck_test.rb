require 'minitest/autorun'
require_relative 'deck'

class DeckTest < MiniTest::Test

  def test_deck_holds_52
    deck = Deck.new
    assert_equal 52, deck.cards.length
  end

  def test_a_card_contains_13_of_each_suit
    deck = Deck.new
    assert deck.cards.select{|card| card.suit == "Hearts"}.count == 13
  end

  def test_deck_can_be_drawn_from
    deck = Deck.new
    draw = deck.draw
    assert draw.is_a? Card
    assert_equal 51, deck.cards.length
  end

  def test_if_deck_is_empty
    deck = Deck.new
    52.times { deck.draw}
    assert deck.empty?
  end

  def test_card_values
   card = Card.new("Clubs", "J")
   assert_equal 11, card.value
  end

end

require 'minitest/autorun'
require_relative 'deck'


class DeckTest < MiniTest::Test


  def test_deck_holds_52
    deck = Deck.new
    assert_equal 52, deck.cards.length
  end

  def test_deck_contains_13_of_each_suit

  end

  def test_deck_contains_four_of_each_face_card

  end

  def test_deck_deck_shuffles_on_creation

  end

  def test_deck_can_be_drawn_from
    deck = Deck.new
    draw = deck.draw
    assert draw.ia_a? Card
    assert_equal 51, deck.cards.length
  end

  def test_deck_gets_shuffled
    deck1 = Deck.new
    deck2 = Deck.new
    refute_equal deck1.cards, deck2.cards
  end

  def test_if_deck_is_empty
    deck - Deck.new
    52.times { deck.draw}
    assert deck.empty?
  end



end

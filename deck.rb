require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    build_deck
    shuffle
  end

  def build_deck
    Card.suits.each do |s|
      Card.faces.each do |f|
        cards << Card.new(s, f)
      end
    end
  end

  def draw
    @cards.shift
  end

  def empty?
    @cards.empty?
  end

  def shuffle
    @cards.shuffle!
  end

end

require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
Card.suits.each do |s|
  Card.faces.length.each do |f|
    cards << Card.new(f, s)
    end
  end
  shuffle
  end

  def draw
    cards.shift
  end

  def empty?
    cards.empty?
  end

  def shuffle
    cards.shuffle!
  end

end

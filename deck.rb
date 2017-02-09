require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    @face = %w{2 3 4 5 6 7 8 9 10 J Q K A}
    @suits = %w{Spades Hearts Diamonds Clubs}
suits.each do |s|
  face.length.times do |f|
    cards << Card.new(f, s)
    end
  end

  cards.shuffle!
  end

  def draw
    cards.shift
  end

  def empty?
    cards.empty?
  end

end

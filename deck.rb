require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    @suits = %w(Spades, Hearts, Clubs, Diamonds)
    @value = %w(2 3 4 5 6 7 8 9 10 11 12 13 14)
    suits.each do |suit| value.each do |value|
    end
  end
  end

  
end

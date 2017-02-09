require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    @face = %w{2 3 4 5 6 7 8 9 10 J Q K A}
    @suits = %w{Spades Hearts Diamonds Clubs}
  end


suits.each do |suit| face.size.times do |sort| @cards << Card.new( face[sort], suit, sort+1 )
end
end

end

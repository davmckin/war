class Card

def self.faces
  ("2".."10").to_a + %w(J Q K A)
end

def self.suits
  %w{Spades Hearts Diamonds Clubs}
end

  attr_accessor  :suit, :face, :value

  def initialize(suit, face)
    @suit = suit
    @face = face.to_s
    @value = find_value
  end

  def find_value
    self.class.faces.index(face)
  end

  def >(other)
    value > other.value
  end

  def <(other)
    value < other.value
  end

  def ==(other)
    if other.is_a? Card
      value == other.value
    else
      super(other)
    end
  end


end

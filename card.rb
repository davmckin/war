class Card

include Comparable

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
    case
    when face.to_i != 0 then face.to_i
    when face == "J" then 11
    when face == "Q" then 12
    when face == "K" then 13
    else 14
    end
  end

  def +(other)
        value + other.value
  end

  def <=>(other)
    if other.is_a? Card
      value <=> other.value
    else
      super(other)
    end
  end

  def to_s
    "a #{face} of #{suit}"
  end

end

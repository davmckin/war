class Card

  attr_accessor  :suit, :face, :value

  def initialize(suit, face)
    @suit = suit
    @face = face.to_s
    @value = find_value
  end

  def find_value

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

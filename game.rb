require_relative ' deck'


class Game

  attr_accessor :player, :opponent, :deck

  def initialize(deck=Deck.new)
    @deck = deck
    @player_deck = player
    @opponent_deck = opponent
  end

  def draw


end

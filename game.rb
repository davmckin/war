require_relative 'deck'


class Game

  attr_accessor :player, :opponent, :p_win, :o_wins, :rounds, :ties

  def initialize
    @player = Deck.new
    @opponent = Deck.new
    @p_wins = []
    @o_wins = []
    @rounds = 0
    @ties = 0
  end

  def play
    until @player.empty?
      hand
    end
    game_over
  end

  def hand
    self.rounds = rounds + 1
    p_card = player.draw
    o_card = opponent.draw
    if p_card > o_card
      p_wins << p_card
      p_wins << o_card
    elsif o_card > p1_card
      o_wins << p_card
      o_wins << o_card
    else
      self.ties += 1
    end
  end

  def game_over
    if p_winslength > o_wins.length
      puts "Player wons after #{rounds} rounds"
    elsif o_wins.length > p_wins.length
      puts "opponent wins after"
    else
      puts "tied"
    end
    ask_for_rematch
  end

  def ask_for_rematch
      puts "would you like to play again? (y/n)"
      response = gets.chomp&.downcase
      if response == "y"
        Game.new.play
      else puts "thanks"
        exit
      end
  end

end
Game.new.play

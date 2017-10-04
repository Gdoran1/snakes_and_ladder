

class Player
  attr_reader :name
  attr_accessor :position

  def initialize(name)
    @name = name
    @position = 1
  end

  def player_moves(number)
    return @position += number
  end

  def player_wins_game
    if @position > 30
      return "You win!"

    end
  end

end

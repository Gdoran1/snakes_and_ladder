

class Player
  attr_reader :name, :position

  def initialize(name)
    @name = name
    @position = 0
  end

  def player_moves(number)
    return @position += number
  end

end

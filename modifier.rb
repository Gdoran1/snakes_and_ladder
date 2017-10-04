class Modifier

  def initialize(position, change)
    @position = position
    @change = change
  end

  def player_lands_on_modifier(player)
    if player.position == @position
      player.position += @change

    end
    return player.position
  end

end

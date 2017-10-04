require_relative("../player.rb")
require_relative("../board.rb")
require_relative("../dice.rb")
require_relative("../modifier.rb")
require("minitest/autorun")
require("minitest/rg")

class TestPlayer < MiniTest::Test

  def setup
    @board1 = Board.new
    @dice1 = Dice.new
    @player1 = Player.new("Graeme")
    @player2 = Player.new("Laurence")

    @ladder1 = Modifier.new(3, 19)
    @ladder2 = Modifier.new(5, 3)
    @ladder3 = Modifier.new(11, 15)
    @ladder4 = Modifier.new(20, 9)
    @snake1 = Modifier.new(17, -13)
    @snake2 = Modifier.new(19, -12)
    @snake3 = Modifier.new(21, -12)
    @snake4 = Modifier.new(27, -26)
  end

  def test_get_name
    assert_equal("Graeme", @player1.name)
  end

  def test_player_position
    result = @player1.position
  end

  def test_player_moves
    number = @dice1.sides[3]
    @player1.player_moves(number)
    assert_equal(@player1.position, 5)
  end

  def test_player_wins_game
    @player1.player_moves(30)
    result = @player1.player_wins_game
    assert_equal("You win!", result)
  end




end

require_relative("../modifier.rb")
require_relative("../board.rb")
require_relative("../dice.rb")
require_relative("../player.rb")
require("minitest/autorun")
require("minitest/rg")

class TestModifier < MiniTest::Test

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


  def test_player_lands_on_positive_modifier
    @player1.player_moves(2)
    @ladder1.player_lands_on_modifier(@player1)
    assert_equal(22, @player1.position)
  end

  def test_player_lands_on_negative_modifier
    @player1.player_moves(16)
    @snake1.player_lands_on_modifier(@player1)
    assert_equal(4, @player1.position)
  end


end

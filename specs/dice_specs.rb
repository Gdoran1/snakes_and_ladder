require_relative("../dice.rb")
require("minitest/autorun")
require("minitest/rg")

class TestDice < MiniTest::Test

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

  def test_roll_dice
    assert_equal(6, @dice.sides[5])
  end



end

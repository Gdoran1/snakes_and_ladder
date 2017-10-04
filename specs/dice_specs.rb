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
    @snake1 = Modifier.new(17, -13)
  end

  def test_roll_dice
    assert_equal(6, @dice.sides[5])
  end



end

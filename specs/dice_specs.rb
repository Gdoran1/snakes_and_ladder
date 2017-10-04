require_relative("../dice.rb")
require("minitest/autorun")
require("minitest/rg")

class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new
  end

  def test_roll_dice
    assert_equal(6, @dice.sides[5])
  end
  
end

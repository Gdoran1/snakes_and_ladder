require_relative("../board.rb")
require_relative("../modifier.rb")
require("minitest/autorun")
require("minitest/rg")

class BoardTest < MiniTest::Test

  def setup
    @board1 = Board.new
    @dice1 = Dice.new
    @player1 = Player.new("Graeme")
    @player2 = Player.new("Laurence")

    @ladder1 = Modifier.new(3, 19)
    @snake1 = Modifier.new(17, -13)
  end

  def test_show_squares
    assert_equal([], @board.squares)
  end

  def test_position_on_board
    assert_equal(0, @board.squares[9])
  end

end

require_relative("../board.rb")
require("minitest/autorun")
require("minitest/rg")

class BoardTest < MiniTest::Test

  def setup
    @board = Board.new
  end

  def test_show_squares
    assert_equal([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], @board.squares)
  end

  def test_position_on_board
    assert_equal(0, @board.squares[9])
  end

end

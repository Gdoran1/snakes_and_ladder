class Dice
attr_reader :sides
    def initialize
      @sides = [1, 2, 3, 4, 5, 6]
    end

    def roll_dice
      result = @sides.sample()
      puts result
    end


end

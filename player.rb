class Player
  attr_accessor :lives, :id
  def initialize(id)
    @id = id
    @lives = 3
  end

  def lose_life
   @lives = self.lives - 1
  end
end


# Player1 = Player.new(1) #main.rb
# p Player1
# puts Player1.lose_life
# p Player1

# Player2 = Player.new(2)
# p Player2


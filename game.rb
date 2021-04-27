require './player.rb'
require './question.rb'

class Game
  def initialize
    @current_player= 1
  end

  def start_game
    
    player_one = Player.new('1')
    player_two = Player.new('2')
    puts "Welcome to the game!"
    @current_player = player_one

    while true
      if player_one.lives == 0 || player_two.lives == 0
        puts " ----- GAME OVER -----"
        puts "Good bye!"

        if player_one.lives == 0
          puts "Player 2 wins with #{player_two.lives}/3" 
          return
        else
          puts "Player 1 wins with #{player_one.lives}/3"
          return
        end

        return
      end

      x = Question.new
      puts "Player #{@current_player.id}: What does #{x.variable_left} plus #{x.variable_right} equal?" 

      print ">"
      ans = $stdin.gets.chomp 

      if ans.to_i == x.answer
        puts "YES! You are correct."
        puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3" 
        puts "--- NEW TURN ---"
        
      else
        puts "Seriously? No!"
        @current_player.lose_life
        puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3" 
        puts "----- NEW TURN -----"
      end

      if @current_player == player_one
        @current_player = player_two
      else
        @current_player = player_one
      end
  end
end
end
require './question'
require './player'

puts "player 1's name will be? "
player1_name = gets.chomp
puts "player 2's name will be?"
player2_name = gets.chomp

player1 = Player.new(player1_name)
player2 = Player.new(player2_name)

current_player = 0


while(player1.alive? && player2.alive?) do
    player = (current_player == 0) ? player1 : player2
    question = Question.new()

    puts "#{player.name} Hi, #{question.display}"

    response = gets.chomp.to_i

    if(response == question.answer)
        puts "correct! P1 #{player1.lives}/3 vs  P2: #{player2.lives}/3"
    else 
        player.lives -= 1
        puts "wrong, P1: #{player1.lives} lives left! vs P2: #{player2.lives} lives left!"
    end
    current_player = (current_player + 1) % 2

    if (player1.lives == 0)
        puts "#{player2.name} wins this time"
        puts "GAME OVER"
    else if (player2.lives == 0) 
        puts "#{player1.name} wins this time"
        puts "GAME OVER"
    end
    end

end
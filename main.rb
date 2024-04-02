require './game.rb'
require './question.rb'
require './player.rb'

player1 = Player.new('')

player2 = Player.new('')

game = Game.new(player1,player2)

game.play()
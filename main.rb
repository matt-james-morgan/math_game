require './game.rb'
require './question.rb'
require './player.rb'

player1 = Player.new("Matt")

player2 = Player.new("Henry")

game = Game.new(player1,player2)

game.play()
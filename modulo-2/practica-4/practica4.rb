require_relative 'Player'
require_relative 'Team'

player1 = Player.new("Bruno", 10, 4)
player2 = Player.new("Alberto", 15, 5)
player3 = Player.new("Aguilera", 15, 10)
team1 = Team.new("kureluque", player1, player2, player3);
puts team1.to_s

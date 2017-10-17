class Player
  attr_reader :name, :age, :skill_level
  
  def initialize(name, age, skill_level)
    @name = name
    @age = age
    @skill_level = skill_level
  end

  def to_s
    "<#{name}: #{skill_level}(SL), #{age}(AGE)>"
  end

end

class Team
  include Enumerable
  @@teams = 0
  attr_accessor :name, :players
  
  def initialize(name)
    @name = name
    @players = []
    @@teams += 1
  end

  def add_players(*players)
    @players += players
  end

  def to_s
    "#{@name} team: #{@players.join(", ")}"
  end

  def each
    @players.each { |player| yield player }
  end

end

player1 = Player.new("Bob", 13, 5)
player2 = Player.new("Jim", 15, 4.5)
player3 = Player.new("Mike", 21, 5)
player4 = Player.new("Joe", 14, 5)
player5 = Player.new("Scott", 16, 3)

red_team = Team.new("Red")
red_team.add_players(player1, player2, player3, player4, player5)

puts red_team.select { |p| p.age >= 14 && p.age <= 20}.reject { |p| p.skill_level < 4.5}

# Seleccionar únicamente los jugadores entre 14 y 20 años y no incluir a ningún jugador con skill-level menor a 4.5
#puts elig_players
# DEBE IMPRIMIR
# => <Jim: 4.5(SL), 15(AGE)>
# => <Joe: 5(SL), 14(AGE)>

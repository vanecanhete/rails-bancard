class Player
  attr_reader :name
  attr_reader :age
  attr_reader :skill_level

  @required_level

  def initialize (name, age, skill_level)
    @name = name
    @age = age
    @skill_level = skill_level
  end

  def get_info
    "Name: #{@name}, age:  #{@age}, skill_level #{@skill_level}"
  end
end

class Team
  include Enumerable

  @name
  @players
  @required_level

  def initialize (name)
    @name = name
    @required_level = 4.5
  end

  def add_players (*players)

    @players = players
    #@players = players.select {|player|player.skill_level >= @required_level}

    #puts "clase de splats pasado: " + players.class.to_s     #players se recibe como Array, pero cada elemento es del tipo Player
    #@players = players.select do |player|
    #  if (player.skill_level >= 4.5)
    #    player
    #  end
    #end

  end

  def each(&block)
    @players.each do |member|
      block.call(member)
    end
  end

  def self.teams_quantity
    @players.length
  end

  def get_info
    puts "Seleccion de jugadores con nivel >= " + @required_level.to_s
    @players = @players.select {|player|player.skill_level >= @required_level}
    @players.each do |player|
      #puts "clase de player[0]: " + player.class.to_s
      puts player.get_info
    end
  end
end

puts "Inicio de la lista"

player1 = Player.new("Bob", 13, 5)
puts player1.get_info
player2 = Player.new("Jim", 15, 4.5)
puts player2.get_info
player3 = Player.new("Mike", 21, 5)
puts player3.get_info
player4 = Player.new("Joe", 14, 5)
puts player4.get_info
player5 = Player.new("Scott", 16, 3)
puts player5.get_info

puts "Fin de la lista\n\n"

red_team = Team.new("redTeam")
red_team.add_players(player1, player2, player3, player4, player5)
red_team.get_info

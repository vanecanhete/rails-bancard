require_relative 'Player'

class Team

  def initialize(name, *players)
    @name
    @playerList = []
    validator(name, players)
  end

  def to_s
    puts @name
    puts @playerList.to_s
  end

  def validator(name, players)
    aggregate = false
    players.each do |x|
      puts x.to_s
      if x.age >= 14 and x.age <= 20 and x.skill_level >= 4.5
        aggregate = true
        @playerList.push(x)
      end
    end
    
    if aggregate
      @name = name
    end
  end 
end

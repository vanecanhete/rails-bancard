class Player
  attr_accessor :name
  attr_accessor :age
  attr_accessor :skill_level
  
  def initialize(name, age, skill_level)
    @name = name
    @age = age
    @skill_level = skill_level
  end
end

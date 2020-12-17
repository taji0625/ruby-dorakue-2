require "./character"

class Brave < Character

  def initialize(**params)
    super(**params)
  end

  def attack(monster)
    puts "#{@name} の攻撃！"
    offensive_power = (@offense - monster.defense) / rand(2..8)
    puts "#{monster.name} に #{offensive_power} のダメージを与えた！"
    monster.hp = monster.hp - offensive_power
  end

end
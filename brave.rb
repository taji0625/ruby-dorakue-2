require "./character"

class Brave < Character

  def attack(monster)
    puts "#{@name} の攻撃！"
    offensive_power = (@offense - monster.defense) / rand(2..8)
    puts "#{monster.name} に #{offensive_power} のダメージを与えた！"
    puts ""
    monster.hp = monster.hp - offensive_power
    if monster.hp < 0
      monster.hp = 0
    end
  end

end
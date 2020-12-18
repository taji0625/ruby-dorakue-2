require "./character"

class Monster < Character

  def attack(brave)
    puts "#{@name}の攻撃！"
    offensive_power = (@offense - brave.defense) / rand(2..8)
    puts "#{brave.name} は #{offensive_power} のダメージを受けた！"
    puts ""
    brave.hp = brave.hp - offensive_power
    if brave.hp < 0
      brave.hp = 0
    end
  end

end
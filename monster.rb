require "./character"

class Monster < Character

  def initialize(**params)
    super(**params)
  end

  def attack(brave)
    puts "#{@name}の攻撃！"
    offensive_power = (@offense - brave.defense) / 2
    puts "#{brave.name} は #{offensive_power} のダメージを受けた！"
    brave.hp = brave.hp - offensive_power
    if @hp < 0
      @hp = 0
    end
    if brave.hp < 0
      brave.hp = 0
    end
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{@name}】HP: #{@hp}
    *=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*
    TEXT
  end
end
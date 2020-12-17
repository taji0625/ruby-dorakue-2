class Character
  attr_accessor :name, :hp, :offense, :defense
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end


class Brave < Character

  def initialize(**params)
    super(**params)
  end

  def attack(monster)
    puts "#{monster.name} があらわれた！"
    puts "#{@name} の攻撃！"
    offensive_power = (@offense - monster.defense) / 2
    puts "#{monster.name} に #{offensive_power} のダメージを与えた！"
    monster.hp = monster.hp - offensive_power
  end

end

class Monster < Character

  def initialize(**params)
    super(**params)
  end

  def attack(brave)
    puts "#{@name}の攻撃！"
    offensive_power = (@offense - brave.defense) / 2
    puts "#{brave.name} は #{offensive_power} のダメージを受けた！"
    brave.hp = brave.hp - offensive_power
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{@name}】HP: #{@hp}
    *=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*
    TEXT
  end
end


brave = Brave.new(name: "ゆうしゃ", hp: 300, offense: 189, defense: 88)
monster = Monster.new(name: "アークデーモン", hp: 300, offense: 152, defense: 65)

brave.attack(monster)
monster.attack(brave)


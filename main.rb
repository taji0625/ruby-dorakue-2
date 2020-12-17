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
    puts "#{monster.name} に #{(@offense - monster.defense) / 2} のダメージを与えた！"
  end
end

class Monster < Character

  def initialize(**params)
    super(**params)
  end

  def attack(brave)
    puts "#{@name}の攻撃！"
    puts "#{brave.name} は #{(@offense - brave.defense) / 2} のダメージを受けた！"
  end
end


brave = Brave.new(name: "ゆうしゃ", hp: 300, offense: 189, defense: 88)
monster = Monster.new(name: "アークデーモン", hp: 300, offense: 152, defense: 65)

brave.attack(monster)
monster.attack(brave)


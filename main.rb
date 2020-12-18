require "./brave"
require "./monster"


character = Character.new
brave = Brave.new(name: "ゆうしゃ", hp: 300, offense: 300, defense: 100)
monster = Monster.new(name: "アークデーモン", hp: 300, offense: 300, defense: 100)

puts "#{monster.name} があらわれた！"

loop do
  if brave.hp > 0
    brave.attack(monster)
  else
    puts "#{brave.name} はしんでしまった！"
    break
  end
  
  if monster.hp > 0
    monster.attack(brave)
    character.info(brave, monster)
  else
    character.info(brave, monster)
    puts "#{monster.name} をやっつけた！"
    break
  end
end



require "./brave"
require "./monster"


character = Character.new
brave = Brave.new(name: "ゆうしゃ", hp: 300, offense: 300, defense: 100)
monster = Monster.new(name: "アークデーモン", hp: 300, offense: 300, defense: 100)

puts "#{monster.name} があらわれた！"
while brave.hp > 0 && monster.hp > 0 do
  brave.attack(monster)
  monster.attack(brave) if monster.hp > 0
  character.info(brave, monster)
end
puts "#{brave.name} はしんでしまった！" if brave.hp == 0
puts "#{monster.name} をやっつけた！" if monster.hp == 0


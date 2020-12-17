require "./brave"
require "./monster"



brave = Brave.new(name: "ゆうしゃ", hp: 300, offense: 189, defense: 88)
monster = Monster.new(name: "アークデーモン", hp: 300, offense: 142, defense: 65)

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
  else
    if monster.hp < 0
      monster.hp = 0
    end
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*
    TEXT
    puts "#{monster.name} をやっつけた！"
    break
  end
end



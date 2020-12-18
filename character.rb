class Character
  attr_accessor :name, :hp, :offense, :defense
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  def info(brave, monster)
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*
    
    TEXT
  end
end
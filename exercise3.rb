class Player

  attr_reader :lives, :health_points, :gold_coins

  def initialize
    restart
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    level_up if @gold_coins % 10 == 0
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end
    restart if @lives == 0
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

end

player1 = Player.new

10.times do
  player1.collect_treasure
end

puts player1.lives
puts player1.gold_coins
puts player1.health_points

6.times do
  player1.do_battle(10)
  puts player1.lives
  puts player1.gold_coins
  puts player1.health_points
end

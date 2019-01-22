class River
  attr_reader :name, :fishes

  def initialize(name,fishes)
    @name = name
    @fishes = fishes
  end

  def river_loses_fish()
    @fishes.pop()
  end

  def fish_count()
    return @fishes.length
  end

end

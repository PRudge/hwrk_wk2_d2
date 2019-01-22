class River
  attr_reader :name, :all_the_fish

  def initialize(name, all_the_fish)
    @name = name
    @all_the_fish = all_the_fish
  end

  def river_loses_fish()
    return @all_the_fish.pop()
  end

end

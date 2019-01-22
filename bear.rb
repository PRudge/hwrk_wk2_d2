class Bear
  attr_reader :name, :type, :foods

  def initialize(name, type, foods)
    @name = name
    @type = type
    @foods = foods
  end

  def fish_from_river_to_collection(newly_caught_fish, river)
    # add food to food collection
    foods << newly_caught_fish
    # remove a fish from the river
    river.river_loses_fish()
  end

  def hungry_roar(hungry)
    if hungry
      return "Roooaaar I am starving"
    else
      return "I am sleepy and full of fish"
    end
  end

  def food_count()
    return @foods.length
  end


end

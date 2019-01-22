require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")
require_relative("../river")
require_relative("../bear")

class BearTest < MiniTest::Test

  def setup

    @fish_1 = Fish.new("Salmon")
    @fish_2 = Fish.new("Trout")
    @fish_3 = Fish.new("Perch")
    @fishes = [@fish_1, @fish_2, @fish_3]

    @foods = ["apple", "banana", @fish_1, @fish_2, @fish_3]

    @newly_caught_fish = Fish.new("Tuna")

    @bear = Bear.new("Yogi","Grizzly", @foods)

  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_has_food_collection
    collection = ["apple", "banana", @fish_1, @fish_2, @fish_3]
    assert_equal(collection, @bear.foods)
  end

  def test_fish_from_river_to_collection
    @river_1 = River.new("Amazon", @fishes)
    @bear.fish_from_river_to_collection(@newly_caught_fish, @river_1)
    assert_equal(6, @foods.length)
    assert_equal(2, @fishes.length)
  end

  def test_roar__is_hungry
    roar_string = @bear.hungry_roar(true)
    assert_equal("Roooaaar I am starving", roar_string)
  end

  def test_roar__is_not_hungry
    roar_string = @bear.hungry_roar(false)
    assert_equal("I am sleepy and full of fish", roar_string)
  end

  def test_food_count
    num_food_items = @bear.food_count()
    assert_equal(5, num_food_items)
  end

  def test_count_fish_left_in_river
    @river_1 = River.new("Amazon", @fishes)
    fish_count = @river_1.fish_count()
    assert_equal(3, fish_count)
  end

end

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

    @all_the_fish=[@fish_1, @fish_2, @fish_3]

    @bear = Bear.new("Yogi","Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  # def test_river_loses_fish
  #   assert_equal(3, @all_the_fish.length )
  #   @river.river_loses_fish()
  #   assert_equal(2, @all_the_fish.length )
  # end
end

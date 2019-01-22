require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")
require_relative("../river")

class RiverTest < MiniTest::Test

  def setup


    @fish_1 = Fish.new("Salmon")
    @fish_2 = Fish.new("Trout")
    @fish_3 = Fish.new("Perch")

    @all_the_fish=[@fish_1, @fish_2, @fish_3]

    @river = River.new("Amazon", @all_the_fish)
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_loses_fish
    @river.river_loses_fish()
    assert_equal(2, @all_the_fish.length )
  end

  def test_fish_count
    num_fish = @river.fish_count()
    assert_equal(3, num_fish)
  end




end

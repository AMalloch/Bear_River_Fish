require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")


class River_Test < MiniTest::Test


  def setup
    @river = River.new("Amazon")
    @bear = Bear.new("Yogi")
    @fish = Fish.new("Bear Killer")
  end

  def test_number_of_fish
    assert_equal(0, @river.number_of_fish)
  end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish)
    assert_equal(1, @river.number_of_fish)
  end

  def fish_population_copy
    assert_equal(copy, @river.fish_population_copy)
  end
end

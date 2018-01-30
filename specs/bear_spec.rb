require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class Bear_Test < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @bear = Bear.new("Yogi")
    @fish = Fish.new("Bear Killer")
  end

  def test_stomach_contents
    assert_equal(0, @bear.stomach_contents)
  end

  def test_take_fish
    @bear.take_fish(@fish)
    assert_equal(1, @bear.stomach_contents)
  end

  def test_take_fish_from_river
    @river.add_fish_to_river(@fish)
    @bear.take_fish_from_river(@river)
    assert_equal(1, @bear.stomach_contents())
    assert_equal(0, @river.number_of_fish())

  end
end

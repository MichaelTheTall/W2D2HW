require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../bear.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @bob = Fish.new("Bob")
    @james = Fish.new("James")
    @greg = Fish.new("Greg")
    @leslie = Fish.new("Leslie")
    @jenny = Fish.new("Jenny")
    @rachel = Fish.new("Rachel")
    @fishes = [@bob, @james, @greg, @leslie, @jenny]
    @river = River.new("Amazon", @fishes)
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal(@river.fishes.count, @river.fish_count)
    assert_equal(5, @river.fishes.count)
  end

  def test_add_fish
    @river.add_fish(@rachel)
    assert_equal(6, @river.fishes.count)
  end

  def test_lose_fish
    @river.lose_fish(@bob)
    assert_equal(4, @river.fishes.count)
  end

end

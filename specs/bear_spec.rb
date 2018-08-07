require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../bear.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test

  def setup
    @bob = Fish.new("Bob")
    @james = Fish.new("James")
    @greg = Fish.new("Greg")
    @leslie = Fish.new("Leslie")
    @jenny = Fish.new("Jenny")
    @rachel = Fish.new("Rachel")

    @fishes = [@bob, @james, @greg, @leslie, @jenny]
    @river = River.new("Amazon", @fishes)
    @tummy = []

    @bear = Bear.new("Yogi", "Grizzly", @tummy)
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)

  end

  def test_bear_can_roar
    assert_equal("I'm smarter than the av-er-age bear!", @bear.roar)
  end

  def test_eat_fish
    @bear.eat_fish(@bob)
    assert_equal(1, @bear.food_count)
  end

  def test_food_count_hungry
    assert_equal(0, @bear.food_count)
  end

  def test_food_count_full
    @bear.eat_fish(@bob)
    @bear.eat_fish(@jenny)
    @bear.eat_fish(@greg)
    @bear.eat_fish(@james)
    @bear.eat_fish(@Rachel)
    assert_equal(5, @bear.food_count)
  end

  def test_poop
    @bear.does_a_bear
    assert_equal(0, @bear.food_count)
  end

  def test_gone_fishin
    @bear.gone_fishin(@river, @bob)
    assert_equal(4, @river.fish_count)
    assert_equal(1, @bear.food_count)
  end

end

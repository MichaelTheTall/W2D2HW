require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../bear.rb")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @bob = Fish.new("Bob")
    @james = Fish.new("James")
    @greg = Fish.new("Greg")
    @leslie = Fish.new("Leslie")
    @jenny = Fish.new("Jenny")
    @rachel = Fish.new("Rachel")
  end

  def test_fish_has_name
    assert_equal("Bob", @bob.name)
  end

end

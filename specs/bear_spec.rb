require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")


class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Old Bear", "Likes the Honey")
  end

  def test_bear_has_name
    assert_equal("Old Bear", @bear.name)
  end

  def test_belly_is_empty
    assert_equal(0, @bear.fish_in_belly_count)
  end

end

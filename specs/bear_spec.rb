require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Old Bear", "Likes the Honey")

    @fishes = [
      @fish1 = Fish.new("Jo", "female", 3),
      @fish2 = Fish.new("Jay", "male", 2),
      @fish3 = Fish.new("Ji", "female", 1),
      @fish4 = Fish.new("Jom", "male", 4),
      @fish5 = Fish.new("Ju", "female", 2),
      @fish6 = Fish.new("Jop", "male", 3),
      @fish7 = Fish.new("Ja", "female", 5),
      @fish8 = Fish.new("Jer", "male", 1),
    ]

    @river = River.new("Esk")
  end

  def test_bear_has_name
    assert_equal("Old Bear", @bear.name)
  end

  def test_belly_is_empty
    assert_equal(0, @bear.fish_in_belly_count)
  end

  def test_eat_a_fish__bear_eats
    @bear.eat_a_fish(@river, @fishes)
    assert_equal(1, @bear.fish_in_belly_count)
  end

  def test_eat_a_fish__river_loses_fish
    @river.add_fishes(@fishes)
    @bear.eat_a_fish(@river, @fishes)
    assert_equal(7, @river.fish_count)
  end

end

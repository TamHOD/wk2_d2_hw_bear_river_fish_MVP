require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup()
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

  def test_get_river_name
    assert_equal("Esk", @river.name)
  end

  def test_river_has_fish
    assert_equal(0, @river.fish_count)
  end

  def test_add_fishes
    @river.add_fishes(@fishes)
    assert_equal(8, @river.fish_count)
  end

end

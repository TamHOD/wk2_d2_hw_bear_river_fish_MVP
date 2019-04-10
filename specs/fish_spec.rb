require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")
require_relative("../river")


class FishTest < MiniTest::Test

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

  def test_get_fish_name
    assert_equal("Jo", @fish1.name)
  end

  def test_fish_can_breed
    fish = @fish1
    assert_equal(true, fish.can_breed?(fish))
  end

  def test_do_fish_breed__true
    fish1 = @fish1
    fish2 = @fish4
    river = @river
    assert_equal(true, @fishes.do_breed?(fish1, fish2, river))
  end

end

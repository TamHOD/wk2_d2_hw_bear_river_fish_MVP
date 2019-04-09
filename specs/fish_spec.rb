require("minitest/autorun")
require("minitest/rg")


class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Jo", "female", 3)
  end

  def test_get_fish_name
    assert_equal("Jo", @fish.name)
  end

end

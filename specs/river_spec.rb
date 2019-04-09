require("minitest/autorun")
require("minitest/rg")
require_relative("../river")

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Esk")
  end

  def test_get_river_name
    assert_equal("Esk", @river.name)
  end

end

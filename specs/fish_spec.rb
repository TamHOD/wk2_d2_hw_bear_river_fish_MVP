require("minitest/autorun")
require("minitest/rg")


class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Jo", "female", 3)
  end

  

end

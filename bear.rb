class Bear

  attr_reader :name

  def initialize(name, type)
    @name = name
    @type = type
    @belly = []
  end

  def fish_in_belly_count
    @belly.length
  end

end

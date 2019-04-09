class River

  attr_reader :name, :fishes

  def initialize(name)
    @name = name
    @fishes = []
    @spawn_ready = true
  end

  def fish_count
    @fishes.length
  end

  def add_fishes(fishes)
    @fishes += fishes
  end

end

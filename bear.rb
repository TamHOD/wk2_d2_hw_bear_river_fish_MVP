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

  def eat_a_fish(river, fishes)
    @belly.push(fishes[0])
    river.fishes.delete_at(0)
  end

end

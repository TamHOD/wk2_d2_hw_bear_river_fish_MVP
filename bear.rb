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

  def roar
    return "Rawr, I'm hungry!" if @belly == []
  end

  def counts_fish_in_belly(count)
    if count >= 1
      return "I have #{count} fish in my belly, I don't need to roar."
    else
      roar
    end
  end

end

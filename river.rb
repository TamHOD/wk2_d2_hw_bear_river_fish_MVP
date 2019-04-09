class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
    @spawn_ready = true
  end


end

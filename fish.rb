class Fish

  attr_accessor :name, :gender, :age

  def initialize(name, gender, age)
    @name = name
    @gender = gender
    @age = age
  end

  def can_breed?(fish)
    return true if @age >=3
  end

  def will_breed?(fish1, fish2, river)
    if ((fish1.gender != fish2.gender) && (fish1.can_breed? && fish2.can_breed?)) && river.can_spawn?
      return true
    else
      return false
    end
  end

end

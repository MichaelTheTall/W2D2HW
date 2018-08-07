class Bear

  attr_reader :name, :stomach

  def initialize(name, type, stomach = [])
    @name = name
    @type = type
    @stomach = stomach
  end

  def food_count
    return @stomach.count
  end

  def eat_fish(fish)
    @stomach << fish
  end

  def does_a_bear
    @stomach = []
  end

  def roar
    return "I'm smarter than the av-er-age bear!"
  end

  def gone_fishin(river, fish)
    eat_fish(fish)
    river.lose_fish(fish)
  end

end

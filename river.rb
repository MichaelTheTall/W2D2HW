class River

  attr_reader :name, :fishes

  def initialize(name, fishes = [])
    @name = name
    @fishes = fishes
  end

  def fish_count
    return @fishes.count
  end

  def add_fish(new)
    @fishes << new
  end

  def lose_fish(eat)
    @fishes.delete(eat)
  end

end

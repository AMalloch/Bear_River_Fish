class Bear
  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_contents
    @stomach.count
  end

  def take_fish(fish)
    @stomach << fish
  end

  def take_fish_from_river(river)
    for fish in river.fish_population_copy()
      take_fish(fish)
    end
      river.remove_fish
  end

  def roar()
    return "Roar!"
  end

end

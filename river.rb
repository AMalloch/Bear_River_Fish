class River

  attr_accessor :name

  def initialize(name)
    @name = name
    @fish_population = []
  end

  def number_of_fish
    return @fish_population.count
  end

  def add_fish_to_river(fish)
    @fish_population << fish
  end

  def fish_population_copy() #this is so you are not directly manipulating the array
    copy = @fish_population
    return copy
  end

  def remove_fish
    @fish_population.delete
  end

end

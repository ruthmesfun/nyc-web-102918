class Recipe
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end
  # should return all of the recipe instances

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.most_popular
  end
  # should return the recipe instance
  # with the highest number of users
  # (the recipe that has the most recipe cards)

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.recipe == self
    end
  end

  def users
    self.recipe_cards.map do |rc|
      rc.user
    end
    # should return the user instances who have recipe cards with this recipe
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |rc|
      rc.recipe == self
    end
  end

  def ingredients
    self.recipe_ingredients.map do |rc|
      rc.ingredient
    end
    # should return all of the ingredients in this recipe
  end

  def allergens
    # should return all of the ingredients in this recipe that are allergens
  end

  def add_ingredients
    # should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
  end


end # end of Recipe class

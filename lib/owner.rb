class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @all = []

  class << self
    attr_accessor :all

    def reset_all
      @all = []
    end

    def count
      @all.count
    end
  end

  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    Owner.all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each(&:make_happy)
  end

  def play_with_cats
    @pets[:cats].each(&:make_happy)
  end

  def feed_fish
    @pets[:fishes].each(&:make_happy)
  end

  def sell_pets
    @pets.each_value { |p| p.each(&:get_nervous) }

    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish,"\
    " #{@pets[:dogs].count} dog(s),"\
    " and #{@pets[:cats].count} cat(s)."
  end
end

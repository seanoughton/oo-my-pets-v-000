class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end


  def self.all
    @@all
  end

  def self.reset_all()
    @@all.clear
  end

  def self.count()
    self.all.length
  end

  def say_species()
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def change_pets_mood(key)
    @pets[key].each do |animal|
        animal.mood = "happy"
    end
  end

  def walk_dogs()
    @pets[:dogs].each do |dog|
        dog.mood = "happy"
    end
  end

  def play_with_cats()
    @pets[:cats].each do |cat|
        cat.mood = "happy"
    end
  end

  def feed_fish()
    self.change_pets_mood(:fishes)
    #@pets[:fishes].each do |fish|
        #fish.mood = "happy"
    #end
  end

  def sells_pets()

  end

end

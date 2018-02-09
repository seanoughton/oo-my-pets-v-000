class Owner


  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
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
    puts "I am #{self.species}"
  end


end

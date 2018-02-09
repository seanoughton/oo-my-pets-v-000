class Owner

  attr_accessor :species

  @@all = []

  def initialize(name)
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


end

class Owner

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def add_owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all()
  end

  def self.count()
    self.all.length
  end

end

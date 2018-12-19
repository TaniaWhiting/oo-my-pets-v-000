class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all= []
  
  def initialize(name, species="human")
    @name = name
    @@all << self
    @pets = {fishes:[], cats:[], dogs:[]}
    @species = species
  end
  
  def self.all  
    @@all 
  end

  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
 end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
 end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood= "happy"
    end
 end

  def play_with_cats
end

  def feed_fish
    
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end
  
end
class MakeupSearch::Makeup
  
  @@all = []
  
  attr_accessor :name, :brand, :product_type, :description
  
  def initialize(name, brand, product_type, description)
    @name = name 
    @brand = brand
    @product_type = product_type 
    @description = description
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self
  end 
  
  def self.product_type 
    self.all.select do |p|
    end 
  end 

  def self.find_makeup(name)
    self.all.select do |product|
      product.name == name
    end 
  end 

end 
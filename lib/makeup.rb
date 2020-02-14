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

  def self.find_by_name(name)
    @@all.select{ |product_type| product_type.name == product_type }
  end 

end 
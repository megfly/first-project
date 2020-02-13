require 'pry'
class MakeupSearch::Makeup
  
  attr_accessor :name, :brand, :product_type, :description
  
  @@all = [] 
  
  def initialize(name, brand, product_type, description)
    @name = name 
    @brand = brand
    @product_type = product_type 
    @description = description
    @@all << self
  end 
  
  #def save 
    #@@all << self
  #end 
  
  def self.all 
    @@all
  end 
  
end 
require 'pry'
class MakeupSearch::Makeup
  
  attr_accessor :name, :brand, :product_type, :category, :description
  
  @@all = [] 
  
  def initialize(name, brand, product_type, category, description)
    @name = name 
    @brand = brand 
    @product_type = product_type 
    @category = category 
    @description = description
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
end 
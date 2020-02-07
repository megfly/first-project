class Makeup
  
  attr_accessor :name, :brand, :product_type, :category, :description
  
  def initialize(name, brand, product_type, category, description)
    @name = name   #lookup metaprogramming to make this easier 
    @brand = brand 
    @product_type = product_type 
    @category = category
    @description = description
  end 
  
end 
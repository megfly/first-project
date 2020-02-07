class Makeup
  
  @@all = []
  
  attr_accessor :name, :brand, :product_type, :category, :description
  
  #def initialize(name, brand, product_type, category, description)
    #@name = name   #lookup metaprogramming to make this easier 
    #@brand = brand 
    #@product_type = product_type 
    #@category = category
    #@description = description
  #end 
  
  def initialize(hash)
    hash.each.do |key, value|
      self.send(("#{key}="), value) if self.respond_to?(("#{key}="))
    end 
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
end 
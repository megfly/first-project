class MakeupSearch::Makeup
  
  attr_accessor :name, :brand, :product_type, :category, :description
  
  @@all = [] 
  
  def initialize(attr_hash)
    attr_hash.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("{key}=")
    end 
    save 
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def self.find_by_name(name)
    self.all.select do |product|
      product.name == name 
  end 
  
end 
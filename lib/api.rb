require 'pry'
class MakeupSearch::API 
  
  attr_accessor :name, :brand, :product_type, :category, :description
  
  def initialize("name", brand, product_type, category, description)
    @name = name 
    @brand = brand 
    @product_type = product_type 
    @category = category 
    @description = description
  end 
  
  def self.get_data 
    binding.pry
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)
      response.parsed_response
  end 

  
end 






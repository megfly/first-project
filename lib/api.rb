require 'pry'
class MakeupSearch::API 
  
  attr_accessor :name, :brand, :product_type, :category, :description
  
  def initialize(name)
    @name = name 
    @brand = brand 
    @product_type = product_type 
    @category = category 
    @description = description
  end 
  
  def get_data 
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)
      response.parsed_response.flatten
    
      binding.pry
      #figuring out how to get string data...error 
    end 
  end 
end 






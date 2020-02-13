require 'pry'
require 'httparty'
require_relative './makeup_search/version'

class MakeupSearch::API 
  
  def self.get_data 
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)
      response.each do |makeup|
        #makeup_object = Makeup.new
        binding.pry
        
        name = makeup["name"]
        brand = makeup["brand"]
        product_type = makeup["product_type"]
        description = makeup["description"]
        
        MakeupSearch::Makeup.new(name, brand, product_type, description)
        
    end 
    
  end 
end 


MakeupSearch::API.get_data
binding.pry
true 


require 'pry'
require 'httparty'
require_relative './makeup_search/version'

class MakeupSearch::API 
  
  def self.get_data 
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)
      #makeup_arr = JSON.parse(response.body)
      
      
      response.each do |makeup|
        #makeup_object = Makeup.new
        binding.pry
        
        name = makeup_arr["name"]
        product_type = makeup_arr["product_type"]
        description = makeup_arr["description"]
        
    end 
    
  end 
end 


MakeupSearch::API.get_data



require 'pry'
require 'httparty'
require_relative './makeup_search/version'

class MakeupSearch::API 
  
  attr_accessor :name, :product_type, :description
  
  def initialize(name)
    @name = name
    @product_type = product_type 
    @description = description
  end 
  
  def self.get_data 
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)
      makeup_arr = JSON.parse(response.body)
      
      makeup_arr.each do |makeup|
        #makeup_object = Makeup.new
        
        name = makeup_arr["name"]
        product_type = makeup_arr["product_type"]
        description = makeup_arr["description"]
        
    end 
    
  end 
end 


MakeupSearch::API.get_data



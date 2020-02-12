require 'pry'
require 'httparty'
require_relative './makeup_search/version'

class MakeupSearch::API 
  
  attr_accessor :name, :brand, :product_type, :description
  
  def initialize(name)
    @name = name 
    @brand = brand 
    @product_type = product_type 
    @description = description
  end 
  
  def self.get_data 
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)
      makeup_arr = JSON.parse(response.body)
      
      makeup_arr.each do |makeup|
    end 
    
  end 
end 


MakeupSearch::API.get_data



require_relative './makeup_search/version'
require_relative './cli'
require_relative './api'
require_relative './makeup'

require 'rest-client'
require 'json'
require 'pry'


  def self.get_data 
    binding.pry
    url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
    response = RestClient.get(url)
    JSON.parse(response)
    
    product_array.each do |product|
      Makeup.new(product)
    end 
  end 



module MakeupSearch
    class Error < StandardError; end
    # Your code goes here...
end
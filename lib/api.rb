require 'pry'

class MakeupSearch::API 
  
  def self.get_data 
    response = RestClient.get("https://makeup-api.herokuapp.com/api/v1/products.json")
    product_array = JSON.parse(response.body) #[]
    
    binding.pry
    
    product_array.each do |product|
      Makeup.new(product)
    end 
  end 
  
end 


#url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
#response = RestClient.get(https://makeup-api.herokuapp.com/api/v1/products.json)
#JSON.parse(response)
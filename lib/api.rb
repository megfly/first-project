class MakeupSearch::API 
  
  def self.get_data 
    binding.pry
    url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
    response = RestClient.get(url)
    JSON.parse(response)
    
    #product_array.each do |product|
      #Makeup.new(product)
    #end 
  end 
    
  
end 
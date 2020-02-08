class MakeupSearch::API 
  
  def self.get_data 
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)
      response.parsed_response
      
    product_array.each do |product|
      Makeup.new(product)
    end 
  end 

  
end 






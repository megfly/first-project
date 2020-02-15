class MakeupSearch::API 
  
  def self.get_data 
      url = 'https://makeup-api.herokuapp.com/api/v1/products.json'
      response = HTTParty.get(url)[20..25]
      response.each do |makeup|
        #makeup_object = Makeup.new
        
        name = makeup["name"]
        brand = makeup["brand"]
        product_type = makeup["product_type"]
        description = makeup["description"]
        
        MakeupSearch::Makeup.new(name, brand, product_type, description)
        
    end 
    
  end 
end 

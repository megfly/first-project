class MakeupSearch::API 
  
  def self.get_data 
      url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
      response = HTTParty.get(url)
      response.parsed_response
      
    product_array.each do |product|
      Makeup.new(product)
    end 
  end 

  
end 






require 'pry'
class MakeupSearch::CLI
  
  def call 
      puts 'Hello gorgeous! What are you searching for today?'
      #gets product_type
      products = gets.strip.downcase
      puts 'teeeeeeeeeeeeeeeesting testing lets see what happens'
      
      #puts 'To see makeup products, enter products'
      #puts 'To exit, enter exit'
    api = MakeupSearch::API.new(products)
    api.get_data
  end 
  
  def product_type_list
    Makeup.all.each_with_index do |product, index|
      puts "#{index + 1}, #{product.name}"
      puts ""
      puts "nowwww whaaaaaaaaaat"
    
    input = gets.strip.downcase
    product_type_selection(input)
  end 
  
  def product_type_selection(product_type)
    puts "#{product_type}"
    #find the product_type
  end 
  

  
  def goodbye 
    puts "Goodbye"
  end 
  
end

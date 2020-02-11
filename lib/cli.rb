require 'pry'
class MakeupSearch::CLI
  
  def call 
      puts 'Hello gorgeous! What are you looking for today?'
      #puts 'To see makeup products, enter products'
      #puts 'To exit, enter exit'
    ask_products
  end 
  
  def ask_products 
    puts 'To see products, enter products'
    products = gets.strip.downcase
    api = MakeupSearch::API.new(products)
    api.get_data
  end 
  
  def goodbye 
    puts "Goodbye"
  end 
  
end

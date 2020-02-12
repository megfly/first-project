require 'pry'
class MakeupSearch::CLI
  
  def call 
      puts 'Hello gorgeous! What are you searching for today?'
      puts "To see products, enter 'products'"
      puts "To exit, enter 'exit"

      products = gets.strip.downcase

          api = MakeupSearch::API.new(products)
          MakeupSearch::API.get_data
    menu
  end 
  
  def menu 
    input = gets.strip.downcase 
    
      if input == "products"
        puts product_type_list 
      else if input == "exit"
        puts "exit"
      else 
        puts "Invalid entry, please try again"
        menu 
      end 
  end 
  
  def product_type_list
    Makeup.all.each_with_index do |product, index|
      puts "#{index + 1}, #{product.name}"
    end 
      puts ""
      puts "nowwww whaaaaaaaaaat"
    
    input = gets.strip.downcase
    product_type_selection(input)
  end 
  
  def product_type_selection(product_type)
    puts "#{product_type}"
    #find the product_type
  end 
  
end

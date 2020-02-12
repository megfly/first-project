require 'pry'
class MakeupSearch::CLI
  
  def call 
      puts 'Hello gorgeous! What are you searching for today?'
      puts "To see products, enter 'products'"
      puts "To exit, enter 'exit"
      MakeupSearch::API.get_data
    main_menu
  end 
  
  def main_menu 
    input = gets.strip.downcase 
    
      if input == "products"
        product_list 
      else if input == "exit"
        bye
      else 
        invalid_entry
        menu 
      end 
  end 
  
  def product_list      #soooo iterate over the data to get the product_type
    MakeupSearch::Makeup.all.each.with_index(1) do |product, index|
      puts "#{index + 1}. #{product.name}"
    end 
      puts ""
      puts "Select a product you want more information about"
      input = gets.strip.to_i - 1 
    end 
    
    
  
  def bye 
    puts "See you next time!"
  end 
  
  def invalid_entry 
    puts "Invalid entry, please try again"
  end 
end 
end

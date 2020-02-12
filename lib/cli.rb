require 'pry'

class MakeupSearch::CLI
  
  def call 
      puts 'Hello gorgeous! What are you searching for today?'
      puts "To see products, enter 'products'"
      puts "To exit, enter 'exit'"
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
        main_menu
      end 
    end 
  end 
  
  def product_list      #soooo iterate over the data to get the product_name 
    MakeupSearch::Makeup.all.each_with_index do |product, index|
      puts "#{index + 1}. #{product.name}"
  end 
      puts ""
      puts ""
      input = gets.strip.downcase 
  end 
    
    
  
  def bye 
    puts "See you next time!"
  end 
  
  def invalid_entry 
    puts "Invalid entry, please try again"
  end 
  
  
end 


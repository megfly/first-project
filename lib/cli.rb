require 'pry'

class MakeupSearch::CLI
  
  def call 
      puts 'Hello gorgeous!'
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
      puts "Which product are you searching for today?"
      
      MakeupSearch::API.each.with_index(1) do |product_type, index|
        puts "#{index}. #{product_type}"
        
      #puts "Blush"
      #puts "Bronzer"
      #puts "Eyebrow"
      #puts "Eyeliner"
      #puts "Eyeshadow"
      #puts "Foundation"
      #puts "Lip liner"
      #puts "Lipstick"
      #puts "Mascara"
      #puts "Nail polish"
        
        #iterate over the product they choose to search for all products in that category
       
      puts ""
      puts ""
      input = gets.strip.downcase 
      
      binding.pry
    end 
  end 
    
    
  
  def bye 
    puts "See you next time!"
  end 
  
  def invalid_entry 
    puts "Invalid entry, please try again"
  end 
  
  
end 


class MakeupSearch::CLI
  
  def call 
      puts "Hello gorgeous!"
      puts "To see products, enter 'products'."
      puts "To exit, enter 'exit'."
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
  
  def product_list      
      puts "Which product type are you searching for today?"
            puts "Blush"
            puts "Bronzer"
            puts "Eyebrow"
            puts "Eyeliner"
            puts "Eyeshadow"
            puts "Foundation"
            puts "Lip liner"
            puts "Lipstick"
            puts "Mascara"
            puts "Nail polish"
              input = gets.strip.downcase
            
              MakeupSearch::Makeup.all.each_with_index do |product_type, index|     #iterate over data and grab all product_type's with users selection
                puts "#{index + 1}. #{product_type.name}"
              end 
            puts ""
            puts ""
            #then when user selects a name of the product from the list, it gives them the product name, brand and details of that product
    end 
    
    
  
  def bye 
    puts "See you next time!"
  end 
  
  def invalid_entry 
    puts "Invalid entry, please try again"
  end 
  
  
end 


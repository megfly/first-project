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
    #put invalid_entry somewhere....accidentally misspled blush and it kicked me out
    
      puts "Which product type are you searching for today?"
            puts "Blush"
            puts "Bronzer"
            puts "Eyebrow"
            puts "Eyeliner"
            puts "Eyeshadow"
            puts "Foundation"
            #puts "Lip liner"
            #puts "Lipstick"
            #puts "Mascara"
            #puts "Nail polish"
              
              input = gets.strip.downcase
              
                MakeupSearch::Makeup.all.each_with_index do |product_type, index|  
                puts "#{index + 1}: #{product_type}"
              end 
               
            puts ""
            puts ""
            # :name, :brand, :product_type, :description
            #then when user selects a name of the product from the list, it gives them the product name, brand and details of that product
    end 
    
  def 
    
  
  def bye 
    puts "See you next time!"
  end 
  
  def invalid_entry 
    puts "Invalid entry, please try again"
  end 
  
  
end 


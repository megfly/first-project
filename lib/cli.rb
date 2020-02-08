class MakeupSearch::CLI
  
  
  def call 
      puts 'Hello gorgeous! What are you looking for today?'
      puts 'To see makeup products, enter products'
      puts 'To exit, enter exit'
    input_menu
    API.get_data
  end 
  
  
  def input_menu
      input = gets.strip.downcase
    
      if input == "products"
          product_list
          input_menu
      else if input == "exit"
          goodbye
      else 
          invalid_entry
        end 
      end 
    end 
    
  
  def invalid_entry 
      puts "invalid entry, try again"
        input_menu
  end 
  
  
  def product_list
    #Makeup.all.each_with_index do |product, index|
      #puts "#{index + 1}."
    puts "Blush"
    puts "Bronzer"
    puts "Eyebrow"
    puts "Eyeliner"
    puts "Eyeshadow"
    puts "Foundation"
    puts "Lip liner"
    puts "Lipstick"
    puts "Mascara"
    puts "Nail Polish"
    puts ""
    puts ""
    puts "Which product type would you like to see?"
    input = gets.strip.downcase
    prouduct_category_selection(input)
  end 
  
  def prouduct_category_selection(product_category) 
    puts "#{product_category}"
    #go over makeup array, find method to find the product_category
  end 
  

  
  def goodbye 
    puts "Goodbye"
  end 
  
end

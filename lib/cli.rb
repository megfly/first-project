class MakeupSearch::CLI
  
  
  def call 
      puts 'Hello gorgeous! What are you looking for today?'
      puts 'To see makeup products, enter products'
      puts 'To exit, enter exit'
    API.get_data
    input_menu
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
    Makeup.all.each_with_index do |product_type, index|
      puts "#{index + 1}. #{product_type.name}"
    end 
    puts ""
    puts ""
    puts "Which product type would you like to see?"
    input = gets.strip.downcase
    prouduct_type_selection(input)
  end 
  
  def prouduct_type_selection(product_type) 
    puts "#{product_type}"
    #go over makeup array, find method to find the product_category
  end 
  

  
  def goodbye 
    puts "Goodbye"
  end 
  
end

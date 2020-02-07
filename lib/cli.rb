class MakeupSearch::CLI
  
  def call 
    puts 'Hello gorgeous! What are you looking for today?'
    puts 'To see makeup products, enter products'
    puts 'To exit, enter exit'
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
    puts "1, lipstick"
    puts "2, blush"
    puts "3, foundation"
    puts ""
    puts ""
    puts "Which category would you like?"
    input = gets.strip.downcase
    prouduct_category_selection(input)
    puts ""
    puts ""
    puts "Which product would you like details about?"
    input = gets.strip.downcase
    product_details_selection(input)
  end 
  
  def prouduct_category_selection(product_category) 
    puts "#{product_category}"
    
  end 
  
  def product_details_selection(product_details)
    puts "#{product_details}"
    
  end 
  
  def goodbye 
    puts "Goodbye"
  end 
  
end

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
    prouduct_category_selection
    puts ""
    puts ""
    puts "Which product would you like details about?"
    product_details_selection
  end 
  
  def prouduct_category_selection 
    input = gets.strip.downcase
  end 
  
  def product_details_selection 
    input = gets.strip.downcase
  end 
  
  def goodbye 
    puts "Goodbye"
  end 
  
end

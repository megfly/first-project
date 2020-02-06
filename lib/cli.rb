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
      puts "products"
    else if input == "exit"
      puts "exit"
    else 
      invalid_entry
      end 
    end 
  end 
  
  def invalid_entry 
    puts "invalid entry, try again"
      input_menu
  end 
  
end 
class MakeupSearch::CLI
  
  def call 
    puts ""
    puts "Hello gorgeous!"
    puts ""
    puts "To see products, enter 'products'."
    puts ""
    puts "To exit, enter 'exit'."
    puts ""
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
      MakeupSearch::Makeup.all.each_with_index do |product_type, index|  
        puts "#{index + 1}. #{product_type.name}"
      end 
        puts ""
        puts "Which product would you like to learn more about? Please type in the name of the product from the list!"
        puts ""
      input = gets.strip.split(/ |\_|\-/).map(&:capitalize).join(" ") 
      choose_product(input)
    end 
      
  def choose_product(product)
    prod = MakeupSearch::Makeup.find_makeup(product)
    prod.each do |pr|
      puts ""
      puts "Name: #{pr.name}"
      puts "Brand: #{pr.brand}"
      puts "Product Type: #{pr.product_type}"
      puts "Description: #{pr.description}"
      puts ""
    end 
    go_back
  end 
      
  def go_back 
    puts "To go back to the product list, enter 'back'. Or to exit, enter 'exit'."
      input = gets.strip.downcase
        if input == "back"
          product_list
        else if input == "exit"  
          bye
        else if 
          invalid_entry
        else
          main_menu
        end 
      end 
    end 
  end 
    
  def invalid_entry 
    puts "Invalid entry, please try again"
  end 
  
  def bye 
    puts "See you next time!"
  end 
  
end


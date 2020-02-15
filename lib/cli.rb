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
      MakeupSearch::Makeup.all.each_with_index do |product_type, index|  
        puts "#{index + 1}. #{product_type.name}"
      end 
      puts ""
      puts "Which product would you like to learn more about?"
      
      input = gets.strip.split(/ |\_|\-/).map(&:capitalize).join(" ") 
      choose_product(input)
    end 
      
  def choose_product(product)
    prod = MakeupSearch::Makeup.find_makeup(product)
    prod.each do |pr|
      puts "Name: #{pr.name}"
      puts "Brand: #{pr.brand}"
      puts "Product Type: #{pr.product_type}"
      puts "Description: #{pr.description}"
    end 
  end 
      
  def go_back 
    puts "To go back to the product list, enter 'back'"
    product_list
  end 
    
  def invalid_entry 
    puts "Invalid entry, please try again"
  end 
  
  def bye 
    puts "See you next time!"
  end 
  
end

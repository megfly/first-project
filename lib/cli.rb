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
    puts "Which product would you like to learn more about?"
      MakeupSearch::Makeup.all.each_with_index do |product_type, index|  
        puts "#{index + 1}. #{product_type.name}"
      end 
    input = gets.strip.downcase
      puts ""
      puts ""
    end 
    
  def choose_product
    puts "Choose a product by selecting a number:"
      input = gets.strip.to_i 
      max = MakeupSearch::Makeup.all.length 
        if input.between?(1,max)
          display_product_details(product)
        else 
          invalid_entry 
          product_list
          choose_product
        end 
      end 
      
  def display_product_details(product)
    MakeupSearch::Makeup.each do |p|
      puts "Name: #{p.name}"
      puts "Brand: #{p.brand}"
      puts "Product Type: #{p.product_type}"
      puts "Description: #{p.description}"
      puts "#{p.makeup_class}"
    go_back
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


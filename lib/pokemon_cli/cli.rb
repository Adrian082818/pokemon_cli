class CLI 
  def start
    system('clear')
    
    puts "Welcome to Pokemon API!"
    puts "Loading..."
    
    API.new.get_all_pokemon
    
    puts "Loading complete..."
   menu 
  end 
  
  def menu
    puts "Type 1 to get a list of pokemon"
    puts "Type 2 to exit program"
    menu_input 
  end 
  
  def menu_input 
    user_input = gets.strip 
    
    if user_input == "1"
      puts "something"
      menu
    elsif user_input == "2"
    goodbye 
  else 
    invalid_input 
    menu 
  end 
end 
  
  def goodbye
    puts "Thank you for using the Pokemon API Gem! Goodbye!"
    exit 
  end 
  
  def invalid_input
    puts "Error invalid_input"
  end 
  
  
end 
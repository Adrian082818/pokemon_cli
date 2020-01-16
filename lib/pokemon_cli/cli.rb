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
    puts "Enter 'leave' to exit program"
    menu_input 
    
  end
  
  def sub_menu
    puts "Enter a number associated with a pokemon to get more information on that pokemon"
    puts "Enter 'leave' to exit program"
    # sub_menu_input 
  end 
  
  def menu_input 
    user_input = gets.strip 
    
    if user_input == "1"
     list_pokemon
     sub_menu 
      # menu
    elsif user_input.downcase == "leave"
    goodbye 
  else 
    invalid_input 
    menu 
  end 
end 

# def sub_menu_input
#   # user_input = gets.strip 
    
#   #   if user_input == "1"
#   #   list_pokemon
#   #   sub_menu 
#   #     # menu
#   #   elsif user_input == "leave"
#   #   goodbye 
#   # else 
#   #   invalid_input 
#   #   menu 
#   # end 
# end 

def list_pokemon
  Pokemon.all.each.with_index(1) do |pokemon, i|
    puts "#{i}. #{pokemon.name}"
end 
  
  def goodbye
    puts "Thank you for using the Pokemon API Gem! Goodbye!"
    exit 
  end 
  
  def invalid_input
    puts "Error invalid_input"
  end 
  
end 
end 
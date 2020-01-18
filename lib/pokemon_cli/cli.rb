class CLI 
  def start
    system('clear')
    
    puts "Welcome to the Pokedex CLI!"
    puts "Now accessing Pokemon data..."
    
    API.new.get_pokemon
    
    puts "Pokemon data has been Loaded..."
   menu 
  end 
  
  def menu
    user_input = nil 
    
    while user_input != "exit"
    puts "Enter '1' to get a list of pokemon"
    puts "Enter 'exit' to exit application"
    menu_option 
  end 
  end
  
  def sub_menu
    puts "Enter the number of the Pokemon you would like to know more about."
    puts "Enter 'exit' to exit program."
    sub_menu_option
  end 
  
  def menu_option 
    user_input = gets.strip 
    
    if user_input == "1"
     list_pokemon
     sub_menu_option
      # menu
    elsif user_input.downcase == "exit"
    goodbye 
  else 
    invalid_input 
    menu 
  end 
end 

def sub_menu_option
  user_input = gets.strip 
  
  if user_input.to_i.between?(1, Pokemon.all.length)
    pokemon = Pokemon.all[user_input.to_i - 1]
    print_pokemon_details(pokemon)
    continue?
  elsif user_input.downcase == "exit"
  goodbye
else 
  invalid_input
  sub_menu
end 
end 

def list_pokemon
  Pokemon.all.each.with_index(1) do |pokemon, i|
    puts "#{i}. #{pokemon.name}"
end 

def print_pokemon_details(pokemon)
  puts "Name: #{pokemon.name}"
  puts "Weight: #{pokemon.weight}"
  puts "Height: #{pokemon.height}"
  puts "Type: #{pokemon.type}"
  puts "Gender: #{pokemon.gender}"
end 

def continue?
  puts "Enter '1' for menu, enter '2' to select another pokemon or enter 'exit' to exit program."
  
  user_input = gets.strip 
  if user_input == "1"
    menu 
    menu_option
    elsif user_input == "2"
    list_pokemon
    sub_menu_option
    elsif user_input == "leave"
   goodbye
 elsif invalid_input
  else 
    goodbye
 end 
end 
  
  def goodbye
    puts "Thank you for using the Pokedex CLI! Goodbye!"
    exit 
  end 
  
  def invalid_input
    puts "Who's that Pokemon?"
  end 
  
end 
end 
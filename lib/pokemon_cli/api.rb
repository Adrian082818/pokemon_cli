# require 'rest-client'
# require 'json'
# require 'pry'
# require_relative './pokemon'


class API 
  URL = "https://pokeapi.co/api/v2/"
  
  def get_all_pokemon(page=nil)
    if page 
      pokemon_info = RestClient.get(page)
    else 
   pokemon_info = RestClient.get("https://pokeapi.co/api/v2/pokemon")
 end 
   pokemons_array = JSON.parse(pokemon_info.body)["results"]
   
   pokemons_array.each do |pokemon|
  Pokemon.new(pokemon)
    end
    
    next_page = JSON.parse(pokemon_info.body)["next"]
    if next_page 
      get_all_pokemon(next_page)
    end 
end 


end 
# binding.pry 
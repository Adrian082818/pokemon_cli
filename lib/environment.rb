require 'rest-client'
require 'json'
require 'pry'


require_relative "./pokemon_cli/version"
require_relative './pokemon_cli/pokemon'
require_relative './pokemon_cli/api'
require_relative './pokemon_cli/cli'

module PokemonCli
  class Error < StandardError; end
  # Your code goes here...
end

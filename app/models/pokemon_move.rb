class PokemonMove < ActiveRecord::Base

  belongs_to :pokemons, class_name: "Pokemon", foreign_key: "pokemon_id"
  belongs_to :moves, class_name: "Move", foreign_key: "move_id"

end

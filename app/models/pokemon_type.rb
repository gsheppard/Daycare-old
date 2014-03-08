class PokemonType < ActiveRecord::Base

  belongs_to :pokemons, class_name: "Pokemon", foreign_key: "pokemon_id"
  belongs_to :types, class_name: "Type", foreign_key: "type_id"

end

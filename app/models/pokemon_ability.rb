class PokemonAbility < ActiveRecord::Base

  belongs_to :pokemons, class_name: "Pokemon", foreign_key: "pokemon_id"
  belongs_to :abilities, class_name: "Ability", foreign_key: "ability_id"

end

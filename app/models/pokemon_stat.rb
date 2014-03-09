class PokemonStat < ActiveRecord::Base

  belongs_to :pokemons, class_name: "Pokemon", foreign_key: "pokemon_id"
  belongs_to :stats, class_name: "Stat", foreign_key: "stat_id"

end

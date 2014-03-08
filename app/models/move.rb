class Move < ActiveRecord::Base

  has_many :pokemon_moves
  has_many :pokemons, through: :pokemon_moves

  has_many :types,
    primary_key: "type_id",
    foreign_key: "id"
end

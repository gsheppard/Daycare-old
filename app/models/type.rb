class Type < ActiveRecord::Base

  has_many :pokemon_types
  has_many :pokemons, through: :pokemon_types

  has_many :moves,
    class_name: "Move",
    foreign_key: "type_id"

end

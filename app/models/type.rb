class Type < ActiveRecord::Base

  has_many :pokemon_types
  has_many :pokemons, through: :pokemon_types

  belongs_to :moves

end

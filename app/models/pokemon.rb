class Pokemon < ActiveRecord::Base

  has_many :pokemon_moves
  has_many :moves, through: :pokemon_moves

  has_many :pokemon_types
  has_many :types, through: :pokemon_types

  has_many :pokemon_abilities
  has_many :abilities, through: :pokemon_abilities

  has_many :pokemon_stats
  has_many :stats, through: :pokemon_stats

  belongs_to :daycares, foreign_key: "pokemon_id"

  def ability
    ability_array = []

    self.abilities.each do |ability|
      self.pokemon_abilities.each do |info|
        if info[:ability_id] == ability[:id]
          ability_array[info[:slot]-1] = ability
        end
      end
    end

    ability_array
  end

end

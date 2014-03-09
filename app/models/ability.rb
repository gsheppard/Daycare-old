class Ability < ActiveRecord::Base

  has_one :ability_prose,
    class_name: "AbilityProse",
    foreign_key: "ability_id"
  has_many :pokemon_abilities

end

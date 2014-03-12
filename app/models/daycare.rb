class Daycare < ActiveRecord::Base

  has_one :pokemon,
    primary_key: "pokemon_id",
    foreign_key: "id"

  has_one :ability,
    primary_key: "abil_id",
    foreign_key: "id"

  has_one :nature,
    primary_key: "nature_id",
    foreign_key: "id"

end

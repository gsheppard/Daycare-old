class AbilityProse < ActiveRecord::Base
  self.table_name = "ability_prose"

  belongs_to :abilities
end

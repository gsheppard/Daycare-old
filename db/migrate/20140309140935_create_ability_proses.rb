class CreateAbilityProses < ActiveRecord::Migration
  def change
    create_table :ability_proses do |t|

      t.timestamps
    end
  end
end

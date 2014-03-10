class CreateDaycares < ActiveRecord::Migration
  def change
    create_table :daycares do |t|
      t.integer :user_id
      t.integer :pokemon_id
      t.boolean :hp_iv
      t.boolean :atk_iv
      t.boolean :def_iv
      t.boolean :spa_iv
      t.boolean :spd_iv
      t.boolean :spe_iv
      t.integer :abil_id
      t.integer :nature_id
      t.integer :total_ivs

      t.timestamps
    end
  end
end

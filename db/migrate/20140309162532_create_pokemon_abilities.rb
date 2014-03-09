class CreatePokemonAbilities < ActiveRecord::Migration
  def change
    create_table :pokemon_abilities do |t|

      t.timestamps
    end
  end
end

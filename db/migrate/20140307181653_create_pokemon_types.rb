class CreatePokemonTypes < ActiveRecord::Migration
  def change
    create_table :pokemon_types do |t|

      t.timestamps
    end
  end
end

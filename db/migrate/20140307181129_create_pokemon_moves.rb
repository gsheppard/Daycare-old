class CreatePokemonMoves < ActiveRecord::Migration
  def change
    create_table :pokemon_moves do |t|

      t.timestamps
    end
  end
end

class CreatePokemon < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.column :name, :string
      t.column :pokemon_identifier, :integer

      t.timestamps
    end
  end
end

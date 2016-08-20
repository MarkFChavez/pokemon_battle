class AddTypesOnPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :types, :string, array: true, default: []
  end
end

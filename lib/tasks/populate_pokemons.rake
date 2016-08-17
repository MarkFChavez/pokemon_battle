require "csv"

namespace :populate_pokemons do
  task start: :environment do
    puts "##### Populate Pokemons #####"

    pokemons_dump = File.expand_path("lib/data/pokemons.csv", Rails.root.to_s)

    CSV.foreach(pokemons_dump) do |row|
      # ["id", "identifier", "species_id", "height(m)", "weight(kg)", "base_experience", "order", "is_default"]

      puts "CATCHING #{row[1]}..."
      Pokemon.find_or_create_by(pokemon_identifier: row[0].to_i) do |pokemon|
        pokemon.name = row[1]
      end
      puts "GOT YA!"

    end
  end
end

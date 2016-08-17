require "csv"

namespace :populate_pokemons do
  task start: :environment do
    puts "##### Populate Pokemons #####"

    pokemons_dump = File.expand_path("lib/data/pokemons.csv", Rails.root.to_s)

    CSV.foreach(pokemons_dump) do |row|
      # ["id", "identifier", "species_id", "height(m)", "weight(kg)", "base_experience", "order", "is_default"]
      puts row.inspect
    end
  end
end

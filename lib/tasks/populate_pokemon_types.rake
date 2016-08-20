require "csv"

namespace :populate_pokemon_types do
  task start: :environment do
    puts "##### Populate Pokemon Types #####"

    types = File.expand_path("lib/data/types.csv", Rails.root.to_s)
    pokemon_types = File.expand_path("lib/data/pokemon_types.csv", Rails.root.to_s)

    types_hash = {}

    CSV.foreach(types) do |row|
      # ["id", "identifier"]
      next if $. == 1
      types_hash[row[0].to_s] = row[1]
    end

    CSV.foreach(pokemon_types) do |row|
      # ["pokemon id", "type id"]
      next if $. == 1
      next if row[0].to_i > 718 # Don't get pokemons with ID greater than 718

      pokemon = Pokemon.find(row[0])
      types = pokemon.types

      types << types_hash[row[1].to_s]

      pokemon.types = types
      pokemon.save!

      puts "#{pokemon.name} updated types to >> #{pokemon.types}"
    end
  end
end

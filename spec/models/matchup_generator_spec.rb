require 'spec_helper'

describe MatchupGenerator do

  it "defaults limit to 2" do
    matchup = MatchupGenerator.new(Pokemon)

    expect(matchup.limit).to eq 2
  end

  describe "#generate" do
    before(:each) do
      @pikachu = create_pokemon(name: "Pikachu", pokemon_identifier: 1)
      @bulbasaur = create_pokemon(name: "Bulbasaur", pokemon_identifier: 2)
      @charmander = create_pokemon(name: "Charmander", pokemon_identifier: 3)
    end

    it "returns two random pokemons" do
      matchup = MatchupGenerator.new(Pokemon)

      expected = [Pokemon, Pokemon]

      expect(matchup.generate.map(&:class)).to eq expected
    end
  end
end

def create_pokemon(pokemon_attributes)
  Pokemon.create(pokemon_attributes)
end

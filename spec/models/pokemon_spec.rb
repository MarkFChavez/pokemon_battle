require 'spec_helper'

describe Pokemon do
  it "requires a name" do
    pokemon = Pokemon.new(name: "", pokemon_identifier: 1)
    expect(pokemon).not_to be_valid
  end

  it "requires a pokemon identifier" do
    pokemon = Pokemon.new(name: "Pikachu", pokemon_identifier: nil)
    expect(pokemon).not_to be_valid
  end

  describe "#sprite_url" do
    it "returns a string that points to the relative file in the system" do
      pokemon = Pokemon.new(name: "Pikachu", pokemon_identifier: 50)

      expect(pokemon.sprite_url).to eq "pokemons/50.png"
    end
  end
end

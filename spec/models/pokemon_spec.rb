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
end

require 'spec_helper'

describe Battle do
  it "should have pokemon_a" do
    battle = Battle.new(player_one_id: nil, player_two_id: 1, victor_id: 1) 

    expect(battle).not_to be_valid
  end

  it "should have pokemon_b" do
    battle = Battle.new(player_one_id: 1, player_two_id: nil, victor_id: 1) 

    expect(battle).not_to be_valid
  end

  it "there should be a winner" do
    battle = Battle.new(player_one_id: 1, player_two_id: 2, victor_id: nil)

    expect(battle).not_to be_valid
  end
end

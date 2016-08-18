class MatchupsController < ApplicationController
  def update
    create_battle!

    redirect_to root_url
  end

  private

    def matchup_ids
      params[:matchup_ids]
    end

    def winning_pokemon
      Pokemon.find(params[:id])
    end

    def create_battle!
      player_one = Pokemon.find(matchup_ids.first)
      player_two = Pokemon.find(matchup_ids.last)

      Battle.create!(player_one: player_one, 
                     player_two: player_two,
                     victor: winning_pokemon)
    end
end

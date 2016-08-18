class MatchupsController < ApplicationController
  def update
    render json: winning_pokemon   
  end

  private

    def matchup_ids
      params[:matchup_ids]
    end

    def winning_pokemon
      Pokemon.find(params[:id])
    end
end

class HomeController < ApplicationController
  def index
    render "index", locals: { matchup: matchup }
  end

  private

    def matchup
      MatchupGenerator.new.generate
    end
end

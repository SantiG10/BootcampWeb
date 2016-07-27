class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    redirect_to matches_path()
  end

  private

  def match_params
    params.require(:match).permit(:date, :result)
  end
end

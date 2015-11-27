class PikkujoulutController < ApplicationController
  def index
  end

  def login
    if params[:team] && team = Team.find_by(name: params[:team].downcase)
      session[:team_id] = team.id
      redirect_to :puzzle
    else
      flash.now.alert = "Oivoi, #{params[:team]} ei saa leikkiä tänään" unless params[:team].blank?
      render "index"
    end
  end
end

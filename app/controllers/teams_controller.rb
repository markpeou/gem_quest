class TeamsController < ApplicationController

  def new
    render :new
  end

  def create
    team = Team.new
    team.name = params[:team_name]
    team.members = params[:team_captain]
    team.email = params[:email]
    team.password = params[:password]
    session[:team_id] = team.id

    if team.save
      redirect_to '/login'
    else
      render :new
    end
  end

  def index
    @teams = Team.all 
  end

  def show
    @team = Team.find_by(id: params[:id])
  end

end

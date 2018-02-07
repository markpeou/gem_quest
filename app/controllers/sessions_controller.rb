class SessionsController < ApplicationController

  def create
    team = Team.find_by(email: params[:email])
    if team && team.authenticate(params[:password])
      session[:team_id] = team.id
      redirect_to '/'
    else
      render :new
    end  
  end

  def new
    redirect_to '/' if logged_in?
  end

  def destroy
    session[:team_id] = nil
    redirect_to '/'
  end

end
module SessionsHelper
  def logged_in?
    !!current_team
  end

  def current_team
    Team.find_by(id: session[:team_id])
  end
end

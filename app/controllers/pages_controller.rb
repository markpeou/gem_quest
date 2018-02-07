class PagesController < ApplicationController

  def home
    redirect_to '/login' if !logged_in?
  end

end

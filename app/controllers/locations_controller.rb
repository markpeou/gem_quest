class LocationsController < ApplicationController

  def show
    @location = Location.find_by(id: params[:id])
    @quests = Quest.where(location_id: @location.id)
  end

  def index
    @quests = Quest.all
    @locations = Location.all
  end

end

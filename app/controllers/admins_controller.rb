class AdminsController < ApplicationController

  def new
  end

  def create
    quest = Quest.new
    quest.name = params[:name]
    quest.instructions = params[:instructions]
    quest.answer = params[:answer]
    quest.location_id = params[:location_id]
    quest.latitude = params[:latitude]
    quest.longitude = params[:longitude]
    quest.point_value = params[:point_value]

    if quest.save
      redirect_to '/admins/show'
    else
      render :show
    end
  end

  def update
    @quest = Quest.all
    quest.name = params[:name]
    quest.instructions = params[:instructions]
    quest.answer = params[:answer]
    quest.location_id = params[:location_id]
    quest.latitude = params[:latitude]
    quest.longitude = params[:longitude]
    quest.point_value = params[:point_value]

    if quest.save
      redirect_to '/admins/show'
    else
      render :show
    end
  end
end

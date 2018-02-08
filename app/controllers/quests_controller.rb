class QuestsController < ApplicationController

  def show
    @quests = Quest.all
    @quest = Quest.find(params[:id])
  end

  def check_answer
    @quest = Quest.find(params[:quest_id])
    a = TeamQuest.new
    a.answer_input = params[:answer_input]
    a.team_id = session[:team_id]
    a.quest_id = params[:quest_id]
    a.points_record = params[:point_value]

    if a.answer_input == @quest.answer
        a.save
        redirect_to '/locations'
      else
        render :show
      end
      
  end


  def new
    quest = Quest.new
    quest.name = params[:name]
    quest.instructions = params[:instructions]
    quest.answer = params[:answer]
    quest.location_id = params[:location_id]
    quest.point_value = params[:point_value]
  end

  def delete
  end

end

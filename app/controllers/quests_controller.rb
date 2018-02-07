class QuestsController < ApplicationController

  def show
    @quest = Quest.find(params[:id])
  end

  def checkAnswer
    answer = params[:answer_input]
    if answer


  end

  def new
  end

  def delete
  end

end

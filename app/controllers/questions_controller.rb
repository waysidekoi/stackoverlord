class QuestionsController < ApplicationController
  def show
  end

  def new
    @question = Question.new
  end

  def create
    current_user.questions.create(params[:question])

    redirect_to root_path
  end
end

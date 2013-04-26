class QuestionsController < ApplicationController
  
  def show
    @answer = Answer.new
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  def new
    @question = Question.new
  end

  def create
    question = current_user.questions.new(params[:question])

    if question.save
      redirect_to question_path(question)
    else
      flash[:notice] = ["Ermagherd ernter serm terxt"]
      redirect_to (:back)
    end
  end
end

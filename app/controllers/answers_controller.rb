class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end
  
  def create
    question = Question.find(params[:answer][:question_id])
    answer = question.answers.create(details: params[:answer][:details])
    answer.user = current_user
    answer.save
    
    redirect_to question_path(question)

  end
end

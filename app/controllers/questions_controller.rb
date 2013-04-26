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
    question = current_user.questions.create(params[:question])

    redirect_to question_path(question)
  end
end

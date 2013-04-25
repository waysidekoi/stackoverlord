class AnswersController < ApplicationController
  def create
    answer = Answer.create()
  end
end

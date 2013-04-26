class VotesController < ApplicationController
  def update

  end

  def create
    object_type = params[:object_type]

    if object_type == "Answer"
      object = Answer.find(params[:object_id])
    elsif object_type == "Question"
      object = Question.find(params[:object_id])
    end

    if current_user
      vote = object.votes.find_or_create_by_user_id(current_user.id)
      vote.upvote! if params[:vote_type] == "upvote"
      vote.downvote! if params[:vote_type] == "downvote"
      redirect_to(:back)
    else
      flash[:notice] = ["You're not logged in!"]
      redirect_to(:back)
    end
  end
end

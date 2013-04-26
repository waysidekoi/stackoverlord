class VotesController < ApplicationController
  def update
    vote = Vote.find(params[:id])
    vote.upvote! if params[:xaction] == "upvote"
    vote.downvote! if params[:xaction] == "downvote"
    redirect_to(:back)
  end
end

class Vote < ActiveRecord::Base

  attr_accessible :user

  belongs_to :votable, :polymorphic => true
  belongs_to :user

  def upvote!
    self.status = 1
  end

  def downvote!
    self.status = -1
  end

  def nullify_vote!
    self.status = 0
  end

end

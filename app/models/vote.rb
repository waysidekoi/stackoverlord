class Vote < ActiveRecord::Base
  scope :upvotes, where("status = ?", 1)
  scope :downvotes, where("status = ?", -1)
  
  attr_accessible :user

  belongs_to :votable, :polymorphic => true
  belongs_to :user

  def upvote!
    self.status = 1
    self.save
  end

  def downvote!
    self.status = -1
    self.save
  end

  def nullify_vote!
    self.status = 0
    self.save
  end

end

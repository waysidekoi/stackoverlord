class Question < ActiveRecord::Base
  attr_accessible :title, :details


  has_many :votes, :as => :votable
  has_many :answers
  belongs_to :user

  validates_presence_of :title, :details

  def belongs_to?(user)
    self.user == user
  end

  def current_user_vote(user)
    self.votes.find_or_create_by_user_id(user.id)
  end

  def score
    self.votes.sum(:status)
  end
end

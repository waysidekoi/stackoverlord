class Answer < ActiveRecord::Base
  attr_accessible :details, :user

  has_many :votes, :as => :votable
  belongs_to :user

  validates_presence_of :details
end

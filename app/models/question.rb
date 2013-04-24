class Question < ActiveRecord::Base
  attr_accessible :title, :details

  has_many :votes, :as => :votable
  has_many :answers

  validates_presence_of :title, :details
end

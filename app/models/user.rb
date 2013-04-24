class User < ActiveRecord::Base
  attr_accessible :email, :alias, :reputation

  validates_presence_of :email, :alias    #implement password validations
  validates_uniqueness_of :email, :alias

  has_many :questions
  has_many :answers
  has_many :votes

  # has_many :question_votes, :class_name => 'votes'
  # has_many :answer_votes, :class_name => ''
end

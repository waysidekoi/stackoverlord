require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :alias, :reputation, :password

  validates_confirmation_of :password
  validates_presence_of :email, :alias    #implement password validations
  validates_uniqueness_of :email, :alias

  has_many :questions
  has_many :answers
  has_many :votes


end

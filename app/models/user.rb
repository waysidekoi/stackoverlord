require 'bcrypt'

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :alias, :reputation, :password

  validates_confirmation_of :password
  validates :email, :presence => true, :email => true
  validates_presence_of :alias    #implement password validations
  validates_uniqueness_of :email, :alias

  has_many :questions
  has_many :answers
  has_many :votes


  
end

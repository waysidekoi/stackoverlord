class Answer < ActiveRecord::Base
  include MarkdownHelper
  attr_accessible :details, :user

  has_many :votes, :as => :votable
  belongs_to :user

  validates_presence_of :details

  def md_details
    md_render(details).html_safe
  end

  def score
    return 0 if self.votes.empty?
    self.votes.map { |x| x.status }.inject(:+)
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery

  # before_filter :authorize, except: [:index, :show]

  def current_user
    if session[:current_user_id]
      User.find(session[:current_user_id])
    else
      false
    end
  end

  # def score
  #   return 0 if self.votes.empty?
  #   self.votes.map { |x| x.status }.inject(:+)
  # end

end

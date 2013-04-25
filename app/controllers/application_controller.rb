class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    User.find(session[:current_user_id])
  end

end

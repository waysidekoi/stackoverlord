class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    if session[:current_user_id]
      User.find(session[:current_user_id])
    else
      false
    end
  end


end

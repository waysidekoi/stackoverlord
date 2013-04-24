class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    session[:current_user_id]
  end
end

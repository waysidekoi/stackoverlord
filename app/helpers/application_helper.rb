module ApplicationHelper

  def current_user
    session[:current_user_id]
  end

end

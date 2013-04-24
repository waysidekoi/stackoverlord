class SessionsController < ApplicationController
  def new

  end

  def create
    ##authenticate user here with params
    @user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to root_path
    else
      render :text => "ERROR"
    end
  end
end

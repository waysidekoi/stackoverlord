class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])

    if @user.save
      #create cookie logic
      redirect_to root_path
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to sign_up_path
    end

  end

  def new
    @user = User.new
  end
end

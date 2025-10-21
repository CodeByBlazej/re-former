class UsersController < ApplicationController
  def new
    # @user = User.new
  end

  def create
    @user = User.new(username: params[:username], email: params[:email], email_confirmation: params[:email_confirmation], password: params[:password], password_confirmation: params[:password_confirmation])

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end

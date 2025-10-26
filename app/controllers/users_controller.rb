class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to new_user_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def user_params
    params.expect(user: [ :username, :email, :email_confirmation, :password, :password_confirmation ])
  end
end

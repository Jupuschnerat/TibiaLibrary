class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # Redirect to a success page, or sign the user in and redirect to another page
      redirect_to root_path, notice: "User successfully signed up!"
    else
      # If the user creation fails, render the signup form again with error messages
      render :new
    end
  end

  #  PUT    /users
  def update
    if @user.update(user_params)
      flash[:notice] = 'Profile successfully updated!'
      redirect_to dashboard_path
    else
      render '/users'
    end
  end

  private

  def user_params
    params.require(:user).permit(:character_name)
  end
end

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(
      username: params[:user][:username],
      password: params[:user][:password]
    )

    if @user.valid? && @user.save && @user.authenticate(@user.password)
      session[:user_id] = @user.id
      flash[:success] = "You have successfully registered and logged in"
      redirect_to root_path
    else
      errors = @user.errors.full_messages.join('<br/>').html_safe
      flash.now[:error] = errors
      render 'new'
    end
  end
end

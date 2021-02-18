class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]

  def new
    @session = User.new
  end

  def create
    @session = User.new(username: params[:user][:username])
    user = User.find_by(username: @session.username)
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      flash.now[:error] = "There was something wrong with your login information"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = "You are already logged in"
      redirect_to root_path
    end
  end

end

class SessionsController < ApplicationController

#--- allow to access login_url, though one doesn't have account or not login ---#
skip_before_filter :authorize, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to manage_index_url
    else
      redirect_to login_url, alert: "Invalid ID and Password combination !"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "Logout was completed !"
  end

end

class ApplicationController < ActionController::Base
  protect_from_forgery

#--- If one is not login, redirect to login page ---#
  before_filter :authorize
  private
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, notice: 'Please Login.'
    end
  end

end

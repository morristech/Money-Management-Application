class ManageController < ApplicationController
  def index
    #--- get login user's name ---#
    @user = User.find(session[:user_id])
  end

end

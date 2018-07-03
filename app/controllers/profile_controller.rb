
class ProfileController < ApplicationController
  skip_before_action :verify_authenticity_token
  helper_method :getmoney

  def index
    @user = current_user
    if @user.nil? then
      redirect_to :controller => "login", :action => "index"
    end
  end
  def getmoney
    @user = current_user
    @user.cash = @user.cash + 10
  end
end

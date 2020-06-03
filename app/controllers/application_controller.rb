class ApplicationController < ActionController::Base
  before_action :set_user
  before_action :current_user

  private
  def current_user
    @current_user = User.first
  end
  def set_user
    @user = User
  end
end

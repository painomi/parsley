class ApplicationController < ActionController::Base
  include Banken
  protect_from_forgery

  helper_method :current_user

  private
  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
    { user: @user }
  end
end

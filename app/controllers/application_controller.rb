class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  
  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      # p "checking"
      @current_user = nil
    end
  end
  # protected
  # def authenticate_user!
  #   redirect_to root_path, notice: "You must login" unless user_signed_in?
  # end
end

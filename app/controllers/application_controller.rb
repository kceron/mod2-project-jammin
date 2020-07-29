class ApplicationController < ActionController::Base
  helper_method :login

    def login
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorize
      redirect_to root_path if login.nil?
    end

end
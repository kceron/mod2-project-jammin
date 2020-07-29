class ApplicationController < ActionController::Base
  helper_method :login

    def login
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorize
      # unless login
      # flash[:notice] = "You must be logged in to see this page"
      redirect_to root_path if login.nil?
    end

end
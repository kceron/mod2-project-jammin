class ApplicationController < ActionController::Base
    def login
        session[:user_id]=user_id
    end

end

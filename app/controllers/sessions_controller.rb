class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by(username: params[:username])
        # return head(:forbidden) unless @user.authenticate(params[:password])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash.now.alert = "Email or password is invalid"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
end
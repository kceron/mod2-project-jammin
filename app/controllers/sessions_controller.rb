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
            flash.now[:alert] = "Username or password is invalid"
            render action: "new"
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logout Successful"
        redirect_to login_path
    end
end
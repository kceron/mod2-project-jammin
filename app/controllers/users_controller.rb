class UsersController < ApplicationController
    before_action :authorize, only: [:show]

    def index
       @users = Users.all
    end

    def show
        @user = User.find(login.id)
    end

    def new
        @user = User.new
        @errors = flash[:errors]
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          session[:user_id] = @user.id  
          redirect_to @user
        else
          flash[:errors]= @user.errors.full_messages
          redirect_to new_user_path
        end
    end

    def destroy
        @user = User.find(params[:id])
        session[:user_id] = nil
        @user.destroy
        flash[:notice] = "Profile deleted."
        redirect_to root_path
    end
     
    private
     
    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation)
    end
end
class LoginController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username:params[:log_in][:username])
        if @user && @user.authenticate(params[:log_in][:password])
            session[:username] = @user.username
            session[:user_id] = @user.id
            redirect_to '/'
        else 
            redirect_to new_log_in_path
        end 
    end 


end


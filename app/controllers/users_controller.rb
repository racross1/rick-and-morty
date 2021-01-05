class UsersController < ApplicationController
    def index
    end 

    def new 
        @user = User.new
    end 

    def create
        if user_params[:password] != user_params[:password_confirmation]
            redirect_to 'new_user_path '
        else 
            @user = User.create(user_params)
            if @user.valid? 
                session[:username] = @user.username
                session[:user_id] = @user.id
                redirect_to '/'
            else redirect_to new_user_path 
            end 
        end
    end


private 

def user_params 
    params.require(:user).permit(:username, :password, :password_confirmation)
end

end 

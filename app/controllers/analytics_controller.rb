class AnalyticsController < ApplicationController
    def index 

    end 

    def show
        @user = User.find(session[:user_id])
        @quests = @user.quests
    end 

end 



    

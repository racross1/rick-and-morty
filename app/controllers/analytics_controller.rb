class AnalyticsController < ApplicationController
    def index 

    end 

    def show
        @user = User.find(session[:user_id])
        @level = @user.level
        @quests = @user.quests
        @message = ""
        if @level < 3 
            @message = "Broh, step your quests up. Your level is so low you are going to turn into a Morty."
        elsif @level < 5
            @message = "Someone knows how to go on a fun adventure. Hopefully you can keep people alive as well."
        else
            @message = "Broh you need a break from questing. You are doing good but Morty needs to go back to school."
        end
    end 

end 



    

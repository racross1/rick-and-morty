class QuestsController < ApplicationController
    
    def index
        @user_quests = User.find(session[:user_id]).quests.reverse
        @quests = Quest.all
        

    end
    
    def show
        @quest = Quest.find(params[:id])
    end

    def new
        @quest = Quest.new
        @ricks = Rick.all
        @morties = Morty.all
        @adventures = Adventure.all
        @items = Item.all
    end

    def create
        # byebug
        @quest = Quest.new(user_id: session[:user_id], rick_id: quest_params[:rick_id], morty_id: quest_params[:morty_id], adventure_id: quest_params[:adventure_id], success: false, rick_alive: false, morty_alive: false, quest_total:0)
        @quest.success = @quest.key_item(quest_params[:item_ids], @quest.adventure_id)
        @quest.success_rate(quest_params[:item_ids])

        if quest_params[:item_ids].length > 3 
            redirect_to "/quests/new"
            return
        end
        @quest.save
        
        quest_params[:item_ids].each do |item|
            QuestItem.create(item_id: item.to_i, quest_id: @quest.id)
        end
        
        if @quest.valid?
            @user = User.find(session[:user_id])
            @user.update_level
            redirect_to @quest
        else
            redirect_to "/quests/new"
        end
    end

    


    private

    def quest_params
        params.require(:quest).permit(:rick_id, :morty_id, :adventure_id, item_ids: [])
    end
end

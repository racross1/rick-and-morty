class AdventuresController < ApplicationController
    def index
        @adventures = Adventure.all
    end

    def show
        @adventure = Adventure.find(params[:id])
    end
    
    def new
        @adventure = Adventure.new
        @items = Item.all
    end

    def create
        @adventure = Adventure.create(adv_params)
        redirect_to adventures_path
    end

    private 

    def adv_params
        params.require(:adventure).permit(:name, :location, :description, :pass, :fail, :item_id)
    end
end

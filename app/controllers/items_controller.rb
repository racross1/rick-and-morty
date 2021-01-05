class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
    end
    
    def new
        @item = Item.new
    end

    def create
        @item = Item.create(item_params)
        redirect_to items_path
    end

    private

    def item_params
        params.require(:item).permit(:name, :success_rate)
    end
end

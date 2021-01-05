class RicksController < ApplicationController
    def index
        @ricks = Rick.all 
    end 

    def show
        @rick = Rick.find(params[:id]) 
    end 

    def new 
        @rick = Rick.new
    end

    def create
        @rick = Rick.create(rick_params)
        if @rick.valid? 
            redirect_to @rick 
        else 
            flash[:errors] = @rick.errors.full_messages
            redirect_to new_rick_path 
        end 
    end

    private 

    def rick_params 
        params.require(:rick).permit(:name, :attitude, :species)
    end

end

class MortiesController < ApplicationController
    def index
        @morties = Morty.all 
    end 

    def show
        @morty = Morty.find(params[:id]) 
    end 

    def new 
        @morty = Morty.new
    end

    def create
        @morty = Morty.create(morty_params)
        if @morty.valid? 
            redirect_to @morty 
        else 
            flash[:errors] = @morty.errors.full_messages
            redirect_to new_morty_path 
        end 
    end

    private 

    def morty_params 
        params.require(:morty).permit(:name, :attitude, :species)
    end

end

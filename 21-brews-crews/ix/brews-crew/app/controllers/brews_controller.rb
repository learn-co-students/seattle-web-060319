class BrewsController < ApplicationController
    
    before_action :set_brew, only: [:edit, :update, :destroy, :show]

    def new
        @brew = Brew.new
        @purchases = Purchase.all
    end
    
    def index
        @brews = Brew.all
    end
    
    def edit
    end
    
    def create
        @brew=Brew.new(brew_params)
        if @brew.save
            redirect_to @brew
        else 
            render :new
        end
    end

    def update
        if @brew.update(brew_params)
            redirect_to @brew
        else
            render :edit
        end
    end

    def destroy
        @brew.delete
        redirect_to @brew
    end

    def show

    end

    def strongest
        @brews = Brew.all
        @sorted = @brews.order(strength: :desc)
        @top_5 = @sorted[0..5]

    end

    private 
    
    def set_brew
        @brew = Brew.find(params[:id])
    end

    def brew_params
        params.require(:brew).permit(:blend_name,:origin,:notes,:strength)
    end

end

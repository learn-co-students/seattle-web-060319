class BrewsController < ApplicationController
before_action :set_brew, only:[:show, :edit, :update, :destroy]

  def index
    @brews = Brew.all
  end



  def show
    @purchases = @brew.purchases
  end


  def new
    @brew = Brew.new
  end

  def create
    @brew = Brew.new(brew_params)
    if @brew.save
      redirect_to @brew

    else
      render :new
    end


  end
# Not needed because its made in the before action
  # def edit

  # end

  def update
    if @brew.update(brew_params)
      redirect_to brew_path(@brew)
    else
      render :edit
    end
  end

  def destroy
    @brew.delete
    redirect_to brews_path
  end

  def strongest
    @brews = Brew.all
    max_str = 0
    @brews.each do |brew| 
      if brew.strength > max_str
        max_str = brew.strength
      end
    end

    @strongest = @brews.select{|brew|brew.strength == max_str}
    @way_strong = @strongest.first.strength.to_s
  end

  private

  def brew_params
    params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
  end

    def set_brew
      @brew = Brew.find(params[:id])
    end






end



class BrewsController < ApplicationController
  before_action :brew_find, only: [:show, :edit, :update, :destroy]
  def index
    @brews = Brew.all
  end

  def new
    @brew = Brew.new
  end

  def create
    # byebug
    @brew = Brew.new(brew_params)
    @brew.save
    redirect_to @brew
  end

  def update
    @brew.update(brew_params)
    redirect_to @brew
  end

  def destroy
    @brew.delete
    redirect_to brews_path
  end

  def strongest
    # byebug
    @strongest_brew = Brew.all.sort_by{|brew| brew.strength}.last
  end

  private
  def brew_find
    @brew = Brew.find(params[:id])
  end

  def brew_params
    params.require(:brew).permit(:blend_name, :origin, :notes, :strength)
  end
end

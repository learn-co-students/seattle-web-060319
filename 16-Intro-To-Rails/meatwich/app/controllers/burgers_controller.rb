class BurgersController < ApplicationController

  def index
    @burger = Burger.all
  end


end

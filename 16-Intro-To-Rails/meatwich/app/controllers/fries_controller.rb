class FriesController < ApplicationController

  def index
    @fry = Fry.all
  end

end

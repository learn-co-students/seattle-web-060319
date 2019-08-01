class PurchasesController < ApplicationController
  before_action :purchase_find, only: [:show, :edit, :update, :destroy]
  def index
    @purchases = Purchase.all
  end

  def show
  end

  def new
    @purchase = Purchase.new
  end

  def create
    byebug
    @purchase = Purchase.new(purchase_params)
    flash.clear
    if @purchase.save
      redirect_to purchase_path(@purchase)
    else
      flash[:error_message] = "Please enter a better answer"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def purchase_params
    params.require(:purchase).permit(:customer_name, :price, :brew_id, :size, :creamer_strength, :special_instructions)
  end

  def purchase_find
    @purchase = Purchase.find(params[:id])
  end
end

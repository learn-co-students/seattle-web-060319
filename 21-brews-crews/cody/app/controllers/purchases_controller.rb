class PurchasesController < ApplicationController
  before_action :set_purchase, only:[:show, :edit, :update]
  def index
    @purchases = Purchase.all
  end

  def new
    @purchase = Purchase.new
    @brews = Brew.all
  end

  def edit
    @brews = Brew.all
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @brews = Brew.all
    if @purchase.save
      redirect_to @purchase

    else
      render :new
    end
  end

  def update
    @brews = Brew.all
    if @purchase.update(purchase_params)
      redirect_to purchase_path(@purchase)
    else
      render :edit
    end
  end


private
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    def purchase_params
      params.require(:purchase).permit(:customer_name, :price, :brew_id, :size, :creamer_strength, :special_instructions)
    end

end

class PurchasesController < ApplicationController
    def new
        @purchase = Purchase.new
    end
    
    def create
        params[:purchase][:price]=params[:purchase][:price].to_f
        @purchase = Purchase.new(params.require(:purchase).permit(:customer_name,:price,:creamer_strength,:size,:special_instructions,:brew_id))
             if @purchase.save
                redirect_to @purchase
             else
                render :new
             end
    end

    def show
        @purchase = Purchase.find(params[:id])

    end

    def index
        @purchases = Purchase.all
    end
     
end

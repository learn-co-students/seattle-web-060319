class FriesController < ApplicationController
  before_action :set_fry, only: [:show, :edit, :update, :destroy]

  # GET /fries
  # GET /fries.json
  def index
    @fries = Fry.all
  end

  # GET /fries/1
  # GET /fries/1.json
  def show
  end

  # GET /fries/new
  def new
    @fry = Fry.new
  end

  # GET /fries/1/edit
  def edit
  end

  # POST /fries
  # POST /fries.json
  def create
    @fry = Fry.new(fry_params)

    respond_to do |format|
      if @fry.save
        format.html { redirect_to @fry, notice: 'Fry was successfully created.' }
        format.json { render :show, status: :created, location: @fry }
      else
        format.html { render :new }
        format.json { render json: @fry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fries/1
  # PATCH/PUT /fries/1.json
  def update
    respond_to do |format|
      if @fry.update(fry_params)
        format.html { redirect_to @fry, notice: 'Fry was successfully updated.' }
        format.json { render :show, status: :ok, location: @fry }
      else
        format.html { render :edit }
        format.json { render json: @fry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fries/1
  # DELETE /fries/1.json
  def destroy
    @fry.destroy
    respond_to do |format|
      format.html { redirect_to fries_url, notice: 'Fry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fry
      @fry = Fry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fry_params
      params.require(:fry).permit(:curly, :sweet_potatoe, :waffle, :calories)
    end
end

class DaycaresController < ApplicationController
  before_action :set_daycare, only: [:show, :edit, :update, :destroy]

  # GET /daycares
  # GET /daycares.json
  def index
    @daycares = Daycare.all
  end

  # GET /daycares/1
  # GET /daycares/1.json
  def show
  end

  # GET /daycares/new
  def new
    @daycare = Daycare.new
  end

  # GET /daycares/1/edit
  def edit
  end

  # POST /daycares
  # POST /daycares.json
  def create
    @daycare = Daycare.new(daycare_params)

    respond_to do |format|
      if @daycare.save
        format.html { redirect_to @daycare, notice: 'Daycare was successfully created.' }
        format.json { render action: 'show', status: :created, location: @daycare }
      else
        format.html { render action: 'new' }
        format.json { render json: @daycare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daycares/1
  # PATCH/PUT /daycares/1.json
  def update
    respond_to do |format|
      if @daycare.update(daycare_params)
        format.html { redirect_to @daycare, notice: 'Daycare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @daycare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daycares/1
  # DELETE /daycares/1.json
  def destroy
    @daycare.destroy
    respond_to do |format|
      format.html { redirect_to daycares_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daycare
      @daycare = Daycare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daycare_params
      params.require(:daycare).permit(:user_id, :pokemon_id, :hp_iv, :atk_iv)
    end
end

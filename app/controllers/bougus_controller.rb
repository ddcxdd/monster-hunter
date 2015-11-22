class BougusController < ApplicationController
  before_action :set_bougu, only: [:show, :edit, :update, :destroy]

  # GET /bougus
  # GET /bougus.json
  def index
    @bougus = Bougu.all
    @bougu_type = params[:bougu_type]
  end

  # GET /bougus/1
  # GET /bougus/1.json
  def show
  end

  # GET /bougus/new
  def new
    @bougu = Bougu.new
  end

  # GET /bougus/1/edit
  def edit
  end

  # POST /bougus
  # POST /bougus.json
  def create
    @bougu = Bougu.new(bougu_params)

    respond_to do |format|
      if @bougu.save
        format.html { redirect_to @bougu, notice: 'Bougu was successfully created.' }
        format.json { render :show, status: :created, location: @bougu }
      else
        format.html { render :new }
        format.json { render json: @bougu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bougus/1
  # PATCH/PUT /bougus/1.json
  def update
    respond_to do |format|
      if @bougu.update(bougu_params)
        format.html { redirect_to @bougu, notice: 'Bougu was successfully updated.' }
        format.json { render :show, status: :ok, location: @bougu }
      else
        format.html { render :edit }
        format.json { render json: @bougu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bougus/1
  # DELETE /bougus/1.json
  def destroy
    @bougu.destroy
    respond_to do |format|
      format.html { redirect_to bougus_url, notice: 'Bougu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bougu
      @bougu = Bougu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bougu_params
      params.require(:bougu).permit(:name, :position, :rare, :defence, :skill, :wazatama, :series, :arm_type, :max_level)
    end
end

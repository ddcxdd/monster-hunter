class ArmsController < ApplicationController
  before_action :set_arm, only: [:show, :edit, :update, :destroy]

  # GET /arms
  # GET /arms.json
  def index
    @arms = Arm.all
  end

  # GET /arms/1
  # GET /arms/1.json
  def show
  end

  # GET /arms/new
  def new
    @arm = Arm.new
  end

  # GET /arms/1/edit
  def edit
  end

  # POST /arms
  # POST /arms.json
  def create
    @arm = Arm.new(arm_params)

    respond_to do |format|
      if @arm.save
        format.html { redirect_to @arm, notice: 'Arm was successfully created.' }
        format.json { render :show, status: :created, location: @arm }
      else
        format.html { render :new }
        format.json { render json: @arm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arms/1
  # PATCH/PUT /arms/1.json
  def update
    respond_to do |format|
      if @arm.update(arm_params)
        format.html { redirect_to @arm, notice: 'Arm was successfully updated.' }
        format.json { render :show, status: :ok, location: @arm }
      else
        format.html { render :edit }
        format.json { render json: @arm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arms/1
  # DELETE /arms/1.json
  def destroy
    @arm.destroy
    respond_to do |format|
      format.html { redirect_to arms_url, notice: 'Arm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arm
      @arm = Arm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arm_params
      params.require(:arm).permit(:name, :skill, :zokusei, :rare, :max_level, :series, :attack, :max_attack, :item, :item_number, :hyouka, :comment)
    end
end

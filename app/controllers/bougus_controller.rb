class BougusController < ApplicationController
  before_action :set_bougu, only: [:show, :edit, :update, :destroy]

  # GET /bougus
  # GET /bougus.json
  def index
    @bougus = Bougu.all
    @bougu_type = params[:bougu_type]
    @series = []
  end

  # GET /bougus/1
  # GET /bougus/1.json
  def show
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

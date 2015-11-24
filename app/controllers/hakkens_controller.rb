class HakkensController < ApplicationController
  before_action :set_hakken, only: [:show, :edit, :update, :destroy]

  # GET /hakkens
  # GET /hakkens.json
  def index
    @hakkens = Hakken.all
  end

  # GET /hakkens/1
  # GET /hakkens/1.json
  def show
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hakken
      @hakken = Hakken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hakken_params
      params.require(:hakken).permit(:quest_number, :quest_name, :day_night, :name, :possibility, :kiseki_name, :kiseki_number, :island)
    end
end

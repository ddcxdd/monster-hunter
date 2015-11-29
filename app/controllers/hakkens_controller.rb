class HakkensController < ApplicationController

  # GET /hakkens
  # GET /hakkens.json
  def index
    @hakkens = Hakken.all
    @hakken_addres = params[:hakken_addres]
  end

  def hakken
    @hakkens = Hakken.all

  end
  # GET /hakkens/1
  # GET /hakkens/1.json


  # Use callbacks to share common setup or constraints between actions.


  # Never trust parameters from the scary internet, only allow the white list through.
end

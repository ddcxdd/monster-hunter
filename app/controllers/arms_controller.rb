class ArmsController < ApplicationController

  # GET /arms
  # GET /arms.json
  def index
    @arms = Arm.all
    @arm_type = params[:arm_type]
  end

  # GET /arms/1
  # GET /arms/1.json

  private
  # Use callbacks to share common setup or constraints between actions.

end

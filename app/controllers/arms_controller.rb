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


  private
    # Use callbacks to share common setup or constraints between actions.
    
end

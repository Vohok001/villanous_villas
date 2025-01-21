class LairsController < ApplicationController

  before_action :set_lair, only: %i[ show edit update destroy ]
  def index
    @lairs = Lair.all
  end

  # GET /lairs/1 or /lairs/1.json
  def show
    @lair = Lair.find(params[:id])
  end

  # GET /lairs/new
  def new
    @lair = Lair.new
  end

  # GET /lairs/1/edit
  def edit
  end

  # POST /lairs or /lairs.json
  def create
    @lair = Lair.new(lair_params)
    @lair.user = current_user
    @lair.save!
  end

  # PATCH/PUT /lairs/1 or /lairs/1.json
  def update
  end

  # DELETE /lairs/1 or /lairs/1.json
  def destroy
    @lair.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lair
      @lair = Lair.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lair_params
      params.require(:lair).permit(:name, :description, :location, :max_guests, :price_per_night, :rating )
    end

end

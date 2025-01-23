class LairsController < ApplicationController
  before_action :set_lair, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new create edit update destroy ]
  before_action :authorize_user, only: %i[ edit update destroy ]

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
    if @lair.save!
      redirect_to lair_path(@lair)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lairs/1 or /lairs/1.json
  def update
    @lair.update!(lair_params)
    redirect_to lair_path(@lair)
  end

  # DELETE /lairs/1 or /lairs/1.json
  def destroy
    @lair.destroy!
    redirect_to lairs_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_lair
    @lair = Lair.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def lair_params
    params.require(:lair).permit(:name, :description, :location, :max_guests, :price_per_night, :_average_rating :images [])
  end

  def authorize_user
    unless current_user == @lair.user
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to lairs_path
    end
  end
end

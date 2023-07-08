class BuildingsController < ApplicationController
  before_action :set_building, only: [:show, :update, :destroy]

  # GET /buildings/:id
  def show
    render json: @building
  end

  # POST /buildings
  def create
    @building = Building.new(building_params)

    if @building.save
      render json: @building, status: :created
    else
      render json: @building.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buildings/:id
  def update
    if @building.update(building_params)
      render json: @building
    else
      render json: @building.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buildings/:id
  def destroy
    @building.destroy
    head :no_content
  end

  private

  def set_building
    @building = Building.find(params[:id])
  end

  def building_params
    params.require(:building).permit(:address, :number_of_floors, :amenities, :owner_id)
  end
end
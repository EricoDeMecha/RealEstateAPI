class UnitsController < ApplicationController
  include ErrorHandling
  before_action :set_unit, only: [:show, :update, :destroy]

  def all
    units = Unit.all
    render json: units, status: :ok
  end

  def count
    count = Unit.count
    render json: { count: count }, status: :ok
  end

  # GET /units/:id
  def show
    render json: @unit, status: :ok
  end

  # POST /units
  def create
    @unit = Unit.new(unit_params)

    if @unit.save
      render json: @unit, status: :created
    else
      render json: @unit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /units/:id
  def update
    if @unit.update(unit_params)
      render json: @unit
    else
      render json: @unit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /units/:id
  def destroy
    @unit.destroy
    head :no_content
  end

  private

  def set_unit
    @unit = Unit.find(params[:id])
  end

  def unit_params
    params.require(:unit).permit(:number, :floor, :size, :building_id)
  end
end

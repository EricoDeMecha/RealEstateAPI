class OwnersController < ApplicationController
  before_action :set_owner, only: [:show, :update, :destroy]

  # GET /owners/:id
  def show
    render json: @owner
  end

  # POST /owners
  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      render json: @owner, status: :created
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /owners/:id
  def update
    if @owner.update(owner_params)
      render json: @owner
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /owners/:id
  def destroy
    @owner.destroy
    head :no_content
  end

  private

  def set_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.require(:owner).permit(:name, :contact_details)
  end
end

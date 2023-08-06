class OwnersController < ApplicationController

  include ErrorHandling

  before_action :find_owner, only: [:show, :update, :destroy]

  # GET /owners/:id
  def show
    render json: @owner, status: :ok
  end

  # GET /owners
  def all
    owners = Owner.all
    render json: owners, stats: :ok
  end
  #GET /owners/count
  def count
    count = Owner.count
    render json: {count: count}, status: :ok
  end
  # POST /owners
  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      render json: @owner, status: :created
    else
      render json: { error: @owner.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /owners/:id
  def update
    if @owner.update(owner_params)
      render json: @owner, status: :ok
    else
      render json: {error: @owner.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # DELETE /owners/:id
  def destroy
    @owner.destroy
    render json: { message: 'User successfully deleted' }, status: :ok
  end

  private

  def find_owner
    @owner = Owner.find(params[:id])
  end

  def owner_params
    params.require(:owner).permit(:name, :contact_details)
  end
end

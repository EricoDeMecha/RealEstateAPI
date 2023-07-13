class TenantsController < ApplicationController
  include ErrorHandling

  before_action :set_tenant, only: [:show, :update, :destroy]
  # GET /tenants/:id
  def show
    render json: @tenant
  end

  # POST /tenants
  def create
    @tenant = Tenant.new(tenant_params)

    if @tenant.save
      render json: @tenant, status: :created
    else
      render json: @tenant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tenants/:id
  def update
    if @tenant.update(tenant_params)
      render json: @tenant
    else
      render json: @tenant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tenants/:id
  def destroy
    @tenant.destroy
    render json: {message: "Tenant Deleted Successfully"},status: :ok
  end

  private

  def set_tenant
    @tenant = Tenant.find(params[:id])
  end

  def tenant_params
    params.require(:tenant).permit(:name, :contact_details, :lease_details, :unit_id)
  end
end

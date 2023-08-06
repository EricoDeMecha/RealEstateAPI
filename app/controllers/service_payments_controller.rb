class ServicePaymentsController < ApplicationController

  include ErrorHandling
  before_action :set_tenant
  before_action :set_service_payment, only: [:show, :update, :destroy]

  # GET /tenants/:tenant_id/service_payments
  def index
    @service_payments = @tenant.service_payments
    render json: @service_payments, status: :ok
  end

  # GET /service_payments/:id
  def show
    render json: @service_payment, status: :ok
  end

  # POST /tenants/:tenant_id/service_payments
  def create
    @service_payment = @tenant.service_payments.build(service_payment_params)

    if @service_payment.save
      render json: @service_payment, status: :created
    else
      render json: @service_payment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /service_payments/:id
  def update
    if @service_payment.update(service_payment_params)
      render json: @service_payment, status: :ok
    else
      render json: @service_payment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /service_payments/:id
  def destroy
    @service_payment.destroy
    render json: { message: "Record Deleted Successfully" }, status: :ok
  end

  private

  def set_tenant
    @tenant = Tenant.find(params[:tenant_id])
  end

  def set_service_payment
    @service_payment = @tenant.service_payments.find(params[:id])
  end

  def service_payment_params
    params.require(:service_payment).permit(:amount, :payment_date, :service_type)
  end
end

class UtilityPaymentsController < ApplicationController
  include ErrorHandling
  before_action :set_tenant
  before_action :set_utility_payment, only: [:show, :update, :destroy]

  # GET /tenants/:tenant_id/utility_payments
  def index
    @utility_payments = @tenant.utility_payments
    render json: @utility_payments, status: :ok
  end

  # GET /utility_payments/:id
  def show
    render json: @utility_payment, status: :ok
  end

  # POST /tenants/:tenant_id/utility_payments
  def create
    @utility_payment = @tenant.utility_payments.build(utility_payment_params)

    if @utility_payment.save
      render json: @utility_payment, status: :created
    else
      render json: @utility_payment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /utility_payments/:id
  def update
    if @utility_payment.update(utility_payment_params)
      render json: @utility_payment, status: :ok
    else
      render json: @utility_payment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /utility_payments/:id
  def destroy
    @utility_payment.destroy
    render json: { message: "Record Deleted Successfully" }, status: :ok
  end

  private

  def set_tenant
    @tenant = Tenant.find(params[:tenant_id])
  end

  def set_utility_payment
    @utility_payment = @tenant.utility_payments.find(params[:id])
  end

  def utility_payment_params
    params.require(:utility_payment).permit(:amount, :payment_date, :utility_type)
  end
end

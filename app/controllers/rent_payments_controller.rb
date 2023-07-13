class RentPaymentsController < ApplicationController

  include ErrorHandling

  before_action :set_tenant
  before_action :set_rent_payment, only: [:show, :update, :destroy]

  # GET /tenants/:tenant_id/rent_payments
  def index
    @rent_payments = @tenant.rent_payments
    render json: @rent_payments, status: :ok
  end

  # GET /rent_payments/:id
  def show
    render json: @rent_payment, status: :ok
  end

  # POST /tenants/:tenant_id/rent_payments
  def create
    @rent_payment = @tenant.rent_payments.build(rent_payment_params)

    if @rent_payment.save
      render json: @rent_payment, status: :created
    else
      render json: @rent_payment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rent_payments/:id
  def update
    if @rent_payment.update(rent_payment_params)
      render json: @rent_payment
    else
      render json: @rent_payment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rent_payments/:id
  def destroy
    @rent_payment.destroy
    render json:  { message: "Rent Payment deleted"}, status: :ok
  end

  private

  def set_tenant
    @tenant = Tenant.find(params[:tenant_id])
  end

  def set_rent_payment
    @rent_payment = @tenant.rent_payments.find(params[:id])
  end

  def rent_payment_params
    params.require(:rent_payment).permit(:amount, :payment_date)
  end
end

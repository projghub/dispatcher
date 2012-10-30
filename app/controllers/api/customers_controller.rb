class Api::CustomersController < ApplicationController
  before_filter :restrict_access

  def index
    @customers = Customer.all
    respond_to do |format|
      format.json { render json: @customers }
    end
  end

  def create
    @customer = Customer.create(params[:customer])

    respond_to do |format|
      if @customer.save
        format.json { render json: @customer, status: :created }
      else
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.json { render json: @customer }
    end
  end

private
  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end
end

class Api::CustomersController < ApplicationController
  before_filter :restrict_access

  def create
    @customer = Customer.new(params[:customer])

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
      #api_key = ApiKey.where(access_token: token).first
      #@current_user = api_key.user if api_key
      ApiKey.exists?(access_token: token)
    end
  end
end

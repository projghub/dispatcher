class ApiKeysController < ApplicationController
  before_filter :authorize

  def create
    @user = User.find(params[:id])
    api_key = @user.api_keys.new

    if api_key.save
      redirect_to user_path(@user), notice: 'API Key successfully created'
    else
      redirect_to user_path(@user), error: 'API Key not created'
    end
  end

  def destroy
    @api_key = ApiKey.find(params[:id])
    @api_key.destroy
    redirect_to user_path(@api_key.user_id), notice: 'API Key successfully deleted'
  end
end

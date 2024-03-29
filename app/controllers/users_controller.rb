class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to users_path, notice: 'User successfully created'
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @api_keys = @user.api_keys.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def destroy
  end
end

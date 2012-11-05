class PushesController < ApplicationController
  before_filter :authorize

  def index
    @pushes = Push.all
  end

  def new
    @push = Push.new
  end

  def create
    @push = Push.new(params[:push])

    if @push.save
      redirect_to pushes_path, notice: 'Push was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @push = Push.find(params[:id])
  end

  def edit
    @push = Push.find(params[:id])
  end

  def update
    @push = Push.find(params[:id])

    if @push.update_attributes(params[:push])
      redirect_to pushes_path, notice: 'Push was successfully updated.'
    else
      render action: 'edit'
    end
  end
    
  def destroy
    @push = Push.find(params[:id])
    @push.destroy
    redirect_to root_path, notice: 'Push was successfully deleted.'
  end
end

class PullsController < ApplicationController
  before_filter :authorize

  def index
    @pulls = Pull.all
  end

  def new
    @pull = Pull.new
  end

  def create
    @pull = Pull.new(params[:pull])

    if @pull.save
      redirect_to pulls_path, notice: 'Pull was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @pull = Pull.find(params[:id])
  end

  def edit
    @pull = Pull.find(params[:id])
  end

  def update
    @pull = Pull.find(params[:id])

    if @pull.update_attributes(params[:pull])
      redirect_to pulls_path, notice: 'Pull was successfully updated.'
    else
      render action: 'edit'
    end
  end
    
  def destroy
    @pull = Pull.find(params[:id])
    @pull.destroy
    redirect_to root_path, notice: 'Pull was successfully deleted.'
  end
end

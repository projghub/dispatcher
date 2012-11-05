class ListsController < ApplicationController
  before_filter :authorize

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])

    if @list.save
      redirect_to lists_path, notice: 'List was successfully created.'
    else
      render action: 'new'
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])

    if @list.update_attributes(params[:list])
      redirect_to lists_path, notice: 'List was successfully updated.'
    else
      render action: 'edit'
    end
  end
    
  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to root_path, notice: 'List was successfully deleted.'
  end
end

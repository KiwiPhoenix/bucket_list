class ListsController < ApplicationController
  
  def index
    @lists = List.all
  end

  def show
    render partial: 'list', { list: @list }
  end

  def create
    @list = List.new(list_params)
    if @list.save
     @list
    else
      render_error(@list)
    end 
  end

  def update
    if @list.update(list_params)
     @list
    else
      render_error
    end 
  end

  def destroy
    @list.destroy
    { 'removed' }, status: :ok
  end
end

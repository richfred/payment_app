class ItemsController < ApplicationController
  
  def new
  	@item = Item.new
  end

  def show
  	@item = Item.find(params[:id])
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
    flash[:success] =  "Item added success!"
      redirect_to @item
    else
      render 'new'
    end
  end

end

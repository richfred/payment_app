class ItemsController < ApplicationController
  before_filter :signed_in_user, only: [:index, :edit, :update]
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy
  
  def new
  	@item = Item.new
  end

  def show
  	@item = Item.find(params[:id])
  end

  def index
  	@items = Item.all
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

  private

    def admin_user
       redirect_to(root_path) unless current_user.admin?
    end

end

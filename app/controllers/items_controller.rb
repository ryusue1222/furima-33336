class ItemsController < ApplicationController
  def index
    @items = Item.order("created_at DESC")
  end
  
  def new
    @item = Item.new
  end

  def cretae
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:category_id, :shipping_id, :status_id, :prefecture_id, :scheduled_delivery_id, :price_id, :user)
  end
end

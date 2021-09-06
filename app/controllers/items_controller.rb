class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.all.order("id DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :description, :category_id, :postage_id, :condition_id, :prefecture_id,
                                 :scheduled_day_id, :price, :image).merge(user_id: current_user.id)
  end
end

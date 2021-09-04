class ItemsController < ApplicationController
  def index
  end

  preivate

  def item_params
    params.require(:item).permit(:item_name, :description, :category_id, :postage_id, :condition_id, :prefecture_id, :days_id, :price, :image).merge(user_id: current_user.id)
  end
end

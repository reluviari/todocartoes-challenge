class GiftListsSuggestionsController < ApplicationController
  def show
    @gift_list = GiftList.find(params[:id])
    @products = Product.order(category_id: :desc).limit(8)
  end
end

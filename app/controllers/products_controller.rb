class ProductsController < ApplicationController
  def index
    @most_selected = Product.order(category_id: :desc).limit(4)
    @best_prices = Product.order(price: :desc).limit(4)

    @products = Product.all
    # render json: @products
  end
end

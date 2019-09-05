class HomeController < ApplicationController

  # GET /
  def index
    @most_selected = GiftList.where(suggestion: true).order("RANDOM()").limit(8)
    @best_prices = GiftList.where(suggestion: true).order("RANDOM()").limit(4)
  end

end
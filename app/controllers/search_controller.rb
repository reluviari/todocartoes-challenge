class SearchController < ApplicationController

  def index
    @apps = Product.where("name LIKE ?", "%#{params[:query]}%")
  end

end
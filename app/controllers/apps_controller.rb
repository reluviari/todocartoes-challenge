class AppsController < ApplicationController
  before_action :set_app, only: [:show]

  def show
  end

  private
    def set_app
      @app = Product.find(params[:id])
    end

end

class AppsController < ApplicationController
  before_action :set_app, only: [:show]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = Product.find(params[:id])
    end

end

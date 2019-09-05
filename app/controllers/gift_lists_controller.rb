class GiftListsController < ApplicationController
    before_action :set_gift_list, only: [:edit, :update, :destroy]

    def index
        @my_gift_lists = GiftList.where(suggestion: false)
    end

    def new
        @gift_list = GiftList.new
    end

    def show
        @gift_list = GiftList.find(params[:id])
        @products = Product.order(category_id: :desc).limit(8)
    end

    def add_products
        @gift_list = GiftList.find(params[:gift_list_id])
        @product_store = User.first.products
    end

    def create
        @gift_list = GiftList.new(params_gift_list)

        respond_to do |format|
            if @gift_list.save
              format.html { redirect_to gift_lists_path, flash: { success: 'Lista criada com sucesso.' }}
            else
              format.html { redirect_to gift_lists_path, flash: { error: @gift_list.errors.full_messages.first }}
            end
        end
    end

    private
  
    def params_gift_list
        params.require(:gift_list).permit(:name, :date_event, :suggestion)
    end

    def set_gift_list
        @gift_list = GiftList.find(params[:id])
    end
    
end
